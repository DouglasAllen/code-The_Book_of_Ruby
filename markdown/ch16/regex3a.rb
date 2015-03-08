# The Book of Ruby - http://www.sapphiresteel.com

# print only comments
File.foreach('regex1.rb')do |line|
  if line =~ /^\s*#/
    puts(line)
  end
end
