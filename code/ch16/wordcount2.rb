# The Book of Ruby - http://www.sapphiresteel.com

count = 0
File.foreach('regex1.rb')do |line|
  line.scan(/[a-z0-9A-Z]+/).each do|word|
    count += 1
    print("[#{count}] #{word}\n")
  end
end

puts("There are #{count} words in this file.")
