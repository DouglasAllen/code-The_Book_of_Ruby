```ruby
# The Book of Ruby - http://www.sapphiresteel.com

require 'find'
require 'thread'

$totalsize = 0
$dirsize = 0

semaphore = Mutex.new

def processFiles(baseDir)
  Find.find(baseDir) do |path|
    $dirsize += $dirsize	# if a directory
    if (FileTest.directory?(path)) && (path != baseDir)
      print("\n#{path} [#{$dirsize / 1024}K]")
      $dirsize = 0
    else					# if a file
      $filesize = File.size(path)
      print("\n#{path} [#{$filesize} bytes]")
      $dirsize += $filesize
      $totalsize += $filesize
    end
  end
end

t1 = Thread.new do
  semaphore.synchronize do
    processFiles('..') # <======= edit this directory name
  end
end

t2 = Thread.new do
  semaphore.synchronize do
    while t1.alive?
      print("\n\t\tProcessing...")
    end
  end
end

t2.join

printf("\nTotal: #{$totalsize} bytes,
       #{$totalsize / 1024}K,
       %0.02fMB\n\n",
"#{$totalsize / 1_048_576.0}")
puts("Total file size: #{$filesize},
      Total directory size: #{$dirsize}")
```