FROM msopenstack/sentinel-windowsservercore
RUN puppet module install puppetlabs-stdlib && puppet module install puppetlabs-powershell && puppet module install puppet-windowsfeature
RUN cd "c:\ProgramData\PuppetLabs\puppet\etc\modules" && git clone https://github.com/openstack-hyper-v/puppet-visualcplusplus2008 visualcplusplus2008
RUN git clone https://github.com/openstack-hyper-v/puppet-windows_git windows_git
RUN git clone https://github.com/openstack-hyper-v/puppet-windows_common windows_common
RUN puppet apply --debug --trace --verbose --modulepath=c:\ProgramData\PuppetLabs\puppet\etc\modules c:\ProgramData\PuppetLabs\puppet\etc\modules\visualcplusplus2008\tests\init.pp
