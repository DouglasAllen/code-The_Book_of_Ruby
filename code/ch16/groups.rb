# The Book of Ruby - http://www.sapphiresteel.com

/(hi).*(h...o)/ =~ "The word 'hi' is short for 'hello'."
print(Regexp.last_match(1), ' ', Regexp.last_match(2), "\n")				#=> hi hello

/(.)(.)(.)/ =~ 'abcdef'
print(Regexp.last_match(1), ' ', Regexp.last_match(3), "\n")				#=> a c
