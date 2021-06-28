# S.T.A.L.K.E.R level unpacker
# Update history:
#	v.0.4.: 27/08/2012 - fix for new debug.pm.
###########################################################
package main;
use strict;
use Cwd;
use Getopt::Long;
use File::Path;
use stkutils::level::level qw(export_data);
use stkutils::utils qw(read_file write_file);
use stkutils::debug qw(fail warn STDERR_CONSOLE STDOUT_CONSOLE STDERR_FILE STDOUT_FILE);
use diagnostics;
use stkutils::level::texture_tbl;

$SIG{__WARN__} = sub{fail(@_);};

my ($unpack, $pack, $out, $log, $switcher, $need_ltx, $tosoc);

GetOptions(
	'decompile=s' => \$unpack,
	'compile=s' => \$pack,
	'out=s' => \$out,
	'log:s' => \$log,
	'switcher:s' => \$switcher,
	'ltx:s' => \$need_ltx,
	'soc' => \$tosoc,
) or fail("wrong console parameters. See info below\n".usage());

# initializing debug
my $debug_mode = STDERR_CONSOLE|STDOUT_CONSOLE;
$debug_mode = STDERR_FILE|STDOUT_FILE if defined $log;
$log = 'level_cdc.log' if defined $log && ($log eq '');
my $debug = stkutils::debug->new($debug_mode, $log);

my $wd = getcwd();

SWITCH: {
	defined $switcher && !defined $unpack && do {switching(); last SWITCH;};
	defined $unpack && !defined $pack && do {decompile(); last SWITCH;};
	defined $pack && !defined $unpack && do {compile(); last SWITCH;};
	fail("you cant compile and decompile at the same time\n".usage());
}

print "done!\n";
$debug->DESTROY();

sub switching {
	my $data = read_file($switcher);
	my $file = stkutils::level::level->new($data);
	$file->read();
	$file->{fsl_shaders}->decompile();

	my $count = $#{$file->{fsl_shaders}->{textures}} + 1;
	my $first_rec = 0;
	if ($file->{fsl_shaders}->{version} > 10) {
		$first_rec = 1;
	}
	my $texture_name = '';
	my $new_texture_name = '';
	my %assoc_texture = %sw_texture;
	if (defined $tosoc) {
		%assoc_texture = reverse %sw_texture;
	}
	for (my $i = $first_rec; $i < $count; $i++) {
		$texture_name = $file->{fsl_shaders}->{textures}[$i];
		foreach my $tnane (split(',', $texture_name)) {
			$new_texture_name = $assoc_texture{$tnane};
  			if ($new_texture_name) {
				print "$i | $tnane >> $new_texture_name\n";
				$file->{fsl_shaders}->{textures}[$i] = $new_texture_name;
			}
		}
	}
	if (defined $need_ltx) {
		File::Path::mkpath($need_ltx);
		chdir $need_ltx;
		$file->{fsl_shaders}->export_ltx();
	} else {
		print "writing level...\n";
		$file->{fsl_shaders}->compile();
		chdir $wd;
		$file->write();	
		if (defined $out) {
			write_file($out, $file->{data});	
		} else {
			write_file('level.new', $file->{data});	
		}
	}
}

sub decompile {
	print "reading level...\n";
	my $data = read_file($unpack);
	my $file = stkutils::level::level->new($data);
	$file->read();
	$file->{fsl_light_dynamic}->decompile();
	$file->{fsl_glows}->decompile();
	$file->{fsl_textures}->decompile() if defined $file->{fsl_textures}->{data};
	$file->{fsl_shaders}->decompile();
	$file->{fsl_portals}->decompile('full');
	
	print "exporting level...\n";
	File::Path::mkpath($out);
	chdir $out;
	$file->{fsl_header}->export_ltx();
	export_data($file->{fsl_cform}) if defined $file->{fsl_cform}->{data};
	export_data($file->{fsl_portals}) if defined $file->{fsl_portals}->{data};
	export_data($file->{fsl_shader_constant}) if defined $file->{fsl_shader_constant}->{data};
	$file->{fsl_light_dynamic}->export_ltx();
	export_data($file->{fsl_light_key_frames}) if defined $file->{fsl_light_key_frames}->{data};
	$file->{fsl_glows}->export_ltx();
	export_data($file->{fsl_visuals}) if defined $file->{fsl_visuals}->{data};
	export_data($file->{fsl_vertex_buffer}) if defined $file->{fsl_vertex_buffer}->{data};
	export_data($file->{fsl_swis}) if defined $file->{fsl_swis}->{data};
	export_data($file->{fsl_index_buffer}) if defined $file->{fsl_index_buffer}->{data};
	$file->{fsl_textures}->export_ltx() if defined $file->{fsl_textures}->{data};
	$file->{fsl_shaders}->export_ltx();
	export_data($file->{fsl_sectors}) if defined $file->{fsl_sectors}->{data};
	if (defined $file->{compressed}) {
		foreach my $chunk (keys %{$file->{compressed}}) {
			$file->{compressed}->export($chunk);
		}
	}
}
sub compile {
	chdir $pack;
	print "importing level...\n";
	my $file = stkutils::level::level->new();
	$file->my_import();
	$file->{fsl_header}->compile();
	$file->{fsl_light_dynamic}->compile();
	$file->{fsl_glows}->compile();
	$file->{fsl_textures}->compile() if defined $file->{fsl_textures}->{data};
	$file->{fsl_shaders}->compile();
	
	print "writing level...\n";
	chdir $wd;
	$file->write();	
	if (defined $out) {
		write_file($out, $file->{data});	
	} else {
		write_file('level.new', $file->{data});	
	}
}
###########################################################