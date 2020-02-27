
require 'securerandom'

i = ARGV[0]
#puts i
puts SecureRandom.alphanumeric(i.to_i)



