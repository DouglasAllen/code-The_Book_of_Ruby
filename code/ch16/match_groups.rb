# The Book of Ruby - http://www.sapphiresteel.com

puts(/(.)(.)(.)/.match('abc')[2])		#=> "b"

/(^.*)(#)(.*)/.match('def myMethod # This is a very nice method')
puts("\n--- $~[0], $~[1], $~[3] ---")
puts($LAST_MATCH_INFO[0], $LAST_MATCH_INFO[1], $LAST_MATCH_INFO[3])
# puts( $~.sort ) # doesn't work!

puts("\n--- $~.to_a.sort ---")
puts($LAST_MATCH_INFO.captures.sort)
