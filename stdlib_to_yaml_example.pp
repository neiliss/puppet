class profile::stdlibtoyamltest (
  String $var1 = "var1answer",
  String $key1 = "key1answer",
  String $key2 = "key2answer",
  String $value1 = "value1answer"
  ) {
$data = {
  "class::${var1}" => {
    "${key1}" => {
      "${key2}" => "${value1}",
    },
  },
}
file { '/tmp/example.erb':
  ensure  => file,
  content => stdlib::to_yaml($data),
}
}
#-----example.erb
#class::var1answer:
#  key1answer:
#    key2answer: value1answer
