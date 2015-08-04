# The Book of Ruby - http://www.sapphiresteel.com

File.foreach('regex1.rb')do |line|
  if line =~ /^\s*#(.*)/
    puts(Regexp.last_match(1))
  end
end
