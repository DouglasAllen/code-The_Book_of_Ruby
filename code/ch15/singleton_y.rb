# The Book of Ruby - http://www.sapphiresteel.com

require 'yaml'

ob = Object.new

# singleton class
class << ob
  def xxx(aStr)
    @x = aStr
  end
end
ob.xxx('hello world')
p(ob)

File.open('test.yml', 'w')do |f|
  YAML.dump(ob, f)
end

ob.xxx('new string')
p(ob)

File.open('test.yml')do |f|
  ob = YAML.load(f)
end

p(ob)
# ob.xxx( "goodbye" ) # this fails - ob is no longer a singleton
