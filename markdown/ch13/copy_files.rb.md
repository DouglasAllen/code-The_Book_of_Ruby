```ruby
# The Book of Ruby - http://www.sapphiresteel.com

require('fileutils')

overwrite_prompt = true

# get source directory
puts('FROM which directory would you like to copy the files?')
sourcedir = gets.chomp

if !(File.directory?(sourcedir))
  puts("A directory called #{sourcedir} cannot be found!")
else
  # get target dir
  puts('INTO which directory would you like to copy the files?')
  targetdir = gets.chomp

  ok = true	# if targetdir doesn't exist...
  unless File.directory?(targetdir)
    ok = false
    puts("#{targetdir} cannot be found!")
    puts('Would you like to create it?')
    answer = gets
    if (answer[0, 1].downcase == 'y')
      FileUtils.mkdir(targetdir) # create targetdir
      ok = true
    end
  end
  if ok
    Dir.foreach(sourcedir)do |f|
      unless File.directory?("#{sourcedir}/#{f}")
        if File.exist?("#{targetdir}/#{f}")
          puts("#{f} already exists in target directory (not copied)")
        else
          FileUtils.cp("#{sourcedir}/#{f}", targetdir)
          puts("Copying... #{sourcedir}/#{f}")
        end
      end
    end
  end
end # if sourcedir was not found
puts('End')

```