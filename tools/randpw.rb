
require 'securerandom'

def randpw
  i = ARGV[0]
  return SecureRandom.alphanumeric(i.to_i)
end
