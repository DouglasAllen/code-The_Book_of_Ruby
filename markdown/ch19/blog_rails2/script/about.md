```ruby
#!/usr/bin/env ruby
require File.dirname(__FILE__) + '/../config/boot'
$LOAD_PATH.unshift "#{RAILTIES_PATH}/builtin/rails_info"
require 'commands/about'
```