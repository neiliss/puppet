# and example puppet file to use with https://forge.puppet.com/modules/puppetlabs/servicenow_reporting_integration
class profile::snow 
(
String $user,
String $password
)
{
class { 'servicenow_reporting_integration::event_management':
  instance => 'yourdevinstance.service-now.com',
  user     => $user,
  password => Sensitive($password),
  pe_console_url => 'https://yourpeconsoleurl'
}
}
