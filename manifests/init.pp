# === Class: windows_visualcplusplus2008
#
# This module installs visualcplusplus2008 on Windows systems. It also adds an entry to the
# PATH environment variable.
#
# === Parameters
#
# [*url*]
#   HTTP url where the installer is available. It defaults to main site.
# [*package*]
#   Package name in the system.
# [*file_path*]
#   This parameter is used to specify a local path for the installer. If it is
#   set, the remote download from $url is not performed. It defaults to false.
#
# === Examples
#
# class { 'windows_visualcplusplus2008': }
#
# class { 'windows_visualcplusplus2008':
#   $url     => 'http://192.168.1.1/files/visualcplusplus2008.exe',
#   $package => 'visualcplusplus2008 version 1.8.0-preview201221022',
# }
#
# === Authors
# 
#
class windows_visualcplusplus2008 (
  $url       = $::windows_visualcplusplus2008::params::url,
  $package   = $::windows_visualcplusplus2008::params::package,
  $file_path = false,
) inherits windows_visualcplusplus2008::params {

  if $file_path {
    $visualcplusplus2008_installer_path = $file_path
  } else {
    $visualcplusplus2008_installer_path = "${::temp}\\${package}.exe"
    windows_common::remote_file{'visualcplusplus2008':
      source      => $url,
      destination => $visualcplusplus2008_installer_path,
      before      => Package[$package],
    }
  }
  package { $package:
    ensure          => installed,
    source          => $visualcplusplus2008_installer_path,
    install_options => ['/VERYSILENT','/SUPPRESSMSGBOXES','/LOG'],
  }
  
}
