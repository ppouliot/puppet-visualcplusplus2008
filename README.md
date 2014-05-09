puppet-windows_visualcplusplus2008
==============
This module installs visualcplusplus2008 on Windows machines, adding the binary to the PATH environemnt variable.

Basic usage
-----------
The basic scenario allows the user to install visualcplusplus2008 fetching the installer from the main site:

    class { 'windows_visualcplusplus2008': }

It is also possible to specify an alternative remote URL:

    class { 'windows_visualcplusplus2008':
      $url => 'http://192.168.1.1/files/visualcplusplus2008_installer.exe',
    }

Finally, it is also possible to specify a local path where the installer is available:

    class { 'windows_visualcplusplus2008':
      $file_path => 'F:/Shared/Software/visualcplusplus2008.exe',
    }

Contributors
------------
 * Peter Pouliot <peter@pouliot.net>
 * Luis Fernandez Alvarez <luis.fernandez.alvarez@cern.ch>
 * Octavian Ciuhandu <ociuhandu@cloudbasesolutions.com>
 * Vijay Tripathi <vijayt@microsoft.com>
 * Tim Rogers


Copyright and License
---------------------

Copyright (C) 2013 Peter J. Pouliot

Peter Pouliot can be contacted at: peter@pouliot.net

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
 
