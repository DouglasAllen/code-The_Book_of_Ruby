```ruby
  [4;36;1mSQL (100.0ms)[0m   [0;1mSET SQL_AUTO_IS_NULL=0[0m
  [4;35;1mSQL (40.0ms)[0m   [0mSHOW TABLES[0m
  [4;36;1mSQL (491.0ms)[0m   [0;1mCREATE TABLE `schema_migrations` (`version` varchar(255) NOT NULL) ENGINE=InnoDB[0m
  [4;35;1mSQL (461.0ms)[0m   [0mCREATE UNIQUE INDEX `unique_schema_migrations` ON `schema_migrations` (`version`)[0m
  [4;36;1mSQL (0.0ms)[0m   [0;1mSHOW TABLES[0m
  [4;35;1mSQL (0.0ms)[0m   [0mSELECT version FROM schema_migrations[0m
Migrating to CreatePosts (20081231131720)
  [4;36;1mSQL (80.0ms)[0m   [0;1mCREATE TABLE `posts` (`id` int(11) DEFAULT NULL auto_increment PRIMARY KEY, `title` varchar(255), `body` text, `created_at` datetime, `updated_at` datetime) ENGINE=InnoDB[0m
  [4;35;1mSQL (70.0ms)[0m   [0mINSERT INTO schema_migrations (version) VALUES ('20081231131720')[0m
  [4;36;1mSQL (10.0ms)[0m   [0;1mSHOW TABLES[0m
  [4;35;1mSQL (0.0ms)[0m   [0mSELECT version FROM schema_migrations[0m
  [4;36;1mSQL (0.0ms)[0m   [0;1mSHOW TABLES[0m
  [4;35;1mSQL (110.0ms)[0m   [0mSHOW FIELDS FROM `posts`[0m
  [4;36;1mSQL (30.0ms)[0m   [0;1mdescribe `posts`[0m
  [4;35;1mSQL (10.0ms)[0m   [0mSHOW KEYS FROM `posts`[0m


Processing PostsController#index (for 127.0.0.1 at 2008-12-31 13:27:32) [GET]


CGI::Session::CookieStore::TamperedWithCookie (CGI::Session::CookieStore::TamperedWithCookie):
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/session/cookie_store.rb:145:in `unmarshal'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/session/cookie_store.rb:102:in `restore'
    c:/ruby/lib/ruby/1.8/cgi/session.rb:304:in `[]'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/cgi_process.rb:98:in `session'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/cgi_process.rb:130:in `stale_session_check!'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/cgi_process.rb:78:in `session'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/base.rb:1205:in `assign_shortcuts_without_flash'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/flash.rb:166:in `assign_shortcuts'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/base.rb:519:in `process_without_filters'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/filters.rb:606:in `process_without_session_management_support'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/session_management.rb:134:in `process'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/base.rb:392:in `process'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/dispatcher.rb:183:in `handle_request'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/dispatcher.rb:110:in `dispatch_unlocked'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/dispatcher.rb:123:in `dispatch'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/dispatcher.rb:122:in `synchronize'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/dispatcher.rb:122:in `dispatch'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/dispatcher.rb:132:in `dispatch_cgi'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/dispatcher.rb:39:in `dispatch'
    c:/ruby/lib/ruby/gems/1.8/gems/rails-2.2.2/lib/webrick_server.rb:103:in `handle_dispatch'
    c:/ruby/lib/ruby/gems/1.8/gems/rails-2.2.2/lib/webrick_server.rb:74:in `service'
    c:/ruby/lib/ruby/1.8/webrick/httpserver.rb:104:in `service'
    c:/ruby/lib/ruby/1.8/webrick/httpserver.rb:65:in `run'
    c:/ruby/lib/ruby/1.8/webrick/server.rb:173:in `start_thread'
    c:/ruby/lib/ruby/1.8/webrick/server.rb:162:in `start'
    c:/ruby/lib/ruby/1.8/webrick/server.rb:162:in `start_thread'
    c:/ruby/lib/ruby/1.8/webrick/server.rb:95:in `start'
    c:/ruby/lib/ruby/1.8/webrick/server.rb:92:in `each'
    c:/ruby/lib/ruby/1.8/webrick/server.rb:92:in `start'
    c:/ruby/lib/ruby/1.8/webrick/server.rb:23:in `start'
    c:/ruby/lib/ruby/1.8/webrick/server.rb:82:in `start'
    c:/ruby/lib/ruby/gems/1.8/gems/rails-2.2.2/lib/webrick_server.rb:60:in `dispatch'
    c:/ruby/lib/ruby/gems/1.8/gems/rails-2.2.2/lib/commands/servers/webrick.rb:66
    c:/ruby/lib/ruby/site_ruby/1.8/rubygems/custom_require.rb:31:in `gem_original_require'
    c:/ruby/lib/ruby/site_ruby/1.8/rubygems/custom_require.rb:31:in `require'
    c:/ruby/lib/ruby/gems/1.8/gems/activesupport-2.2.2/lib/active_support/dependencies.rb:153:in `require'
    c:/ruby/lib/ruby/gems/1.8/gems/activesupport-2.2.2/lib/active_support/dependencies.rb:521:in `new_constants_in'
    c:/ruby/lib/ruby/gems/1.8/gems/activesupport-2.2.2/lib/active_support/dependencies.rb:153:in `require'
    c:/ruby/lib/ruby/gems/1.8/gems/rails-2.2.2/lib/commands/server.rb:49
    c:/ruby/lib/ruby/site_ruby/1.8/rubygems/custom_require.rb:31:in `gem_original_require'
    c:/ruby/lib/ruby/site_ruby/1.8/rubygems/custom_require.rb:31:in `require'
    script/server:3

Rendered c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/templates/rescues/_trace (40.0ms)
Rendered c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/templates/rescues/_request_and_response (0.0ms)
Rendering c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/templates/rescues/layout.erb (internal_server_error)


Processing ApplicationController#index (for 127.0.0.1 at 2008-12-31 13:27:50) [GET]


ActionController::RoutingError (No route matches "/blog" with {:method=>:get}):
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/routing/recognition_optimisation.rb:66:in `recognize_path'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/routing/route_set.rb:386:in `recognize'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/dispatcher.rb:182:in `handle_request'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/dispatcher.rb:110:in `dispatch_unlocked'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/dispatcher.rb:123:in `dispatch'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/dispatcher.rb:122:in `synchronize'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/dispatcher.rb:122:in `dispatch'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/dispatcher.rb:132:in `dispatch_cgi'
    c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/dispatcher.rb:39:in `dispatch'
    c:/ruby/lib/ruby/gems/1.8/gems/rails-2.2.2/lib/webrick_server.rb:103:in `handle_dispatch'
    c:/ruby/lib/ruby/gems/1.8/gems/rails-2.2.2/lib/webrick_server.rb:74:in `service'
    c:/ruby/lib/ruby/1.8/webrick/httpserver.rb:104:in `service'
    c:/ruby/lib/ruby/1.8/webrick/httpserver.rb:65:in `run'
    c:/ruby/lib/ruby/1.8/webrick/server.rb:173:in `start_thread'
    c:/ruby/lib/ruby/1.8/webrick/server.rb:162:in `start'
    c:/ruby/lib/ruby/1.8/webrick/server.rb:162:in `start_thread'
    c:/ruby/lib/ruby/1.8/webrick/server.rb:95:in `start'
    c:/ruby/lib/ruby/1.8/webrick/server.rb:92:in `each'
    c:/ruby/lib/ruby/1.8/webrick/server.rb:92:in `start'
    c:/ruby/lib/ruby/1.8/webrick/server.rb:23:in `start'
    c:/ruby/lib/ruby/1.8/webrick/server.rb:82:in `start'
    c:/ruby/lib/ruby/gems/1.8/gems/rails-2.2.2/lib/webrick_server.rb:60:in `dispatch'
    c:/ruby/lib/ruby/gems/1.8/gems/rails-2.2.2/lib/commands/servers/webrick.rb:66
    c:/ruby/lib/ruby/site_ruby/1.8/rubygems/custom_require.rb:31:in `gem_original_require'
    c:/ruby/lib/ruby/site_ruby/1.8/rubygems/custom_require.rb:31:in `require'
    c:/ruby/lib/ruby/gems/1.8/gems/activesupport-2.2.2/lib/active_support/dependencies.rb:153:in `require'
    c:/ruby/lib/ruby/gems/1.8/gems/activesupport-2.2.2/lib/active_support/dependencies.rb:521:in `new_constants_in'
    c:/ruby/lib/ruby/gems/1.8/gems/activesupport-2.2.2/lib/active_support/dependencies.rb:153:in `require'
    c:/ruby/lib/ruby/gems/1.8/gems/rails-2.2.2/lib/commands/server.rb:49
    c:/ruby/lib/ruby/site_ruby/1.8/rubygems/custom_require.rb:31:in `gem_original_require'
    c:/ruby/lib/ruby/site_ruby/1.8/rubygems/custom_require.rb:31:in `require'
    script/server:3

Rendering c:/ruby/lib/ruby/gems/1.8/gems/actionpack-2.2.2/lib/action_controller/templates/rescues/layout.erb (not_found)


Processing PostsController#index (for 127.0.0.1 at 2008-12-31 13:27:59) [GET]
  [4;36;1mSQL (10.0ms)[0m   [0;1mSET SQL_AUTO_IS_NULL=0[0m
  [4;35;1mPost Load (0.0ms)[0m   [0mSELECT * FROM `posts` [0m
Rendering template within layouts/posts
Rendering posts/index
Completed in 80ms (View: 40, DB: 10) | 200 OK [http://localhost/posts]


Processing PostsController#new (for 127.0.0.1 at 2008-12-31 13:28:35) [GET]
  [4;36;1mSQL (3.0ms)[0m   [0;1mSET SQL_AUTO_IS_NULL=0[0m
  [4;35;1mPost Columns (88.0ms)[0m   [0mSHOW FIELDS FROM `posts`[0m
Rendering template within layouts/posts
Rendering posts/new
Completed in 1498ms (View: 1341, DB: 91) | 200 OK [http://localhost/posts/new]


Processing PostsController#create (for 127.0.0.1 at 2008-12-31 13:29:02) [POST]
  Parameters: {"commit"=>"Create", "authenticity_token"=>"803db2ca817a4b54525829e351dd870104bb8126", "post"=>{"created_at(1i)"=>"2008", "created_at(2i)"=>"12", "body"=>"here it is", "title"=>"My First Blog Post", "created_at(3i)"=>"31", "created_at(4i)"=>"13", "created_at(5i)"=>"28"}}
  [4;36;1mSQL (1.0ms)[0m   [0;1mSET SQL_AUTO_IS_NULL=0[0m
  [4;35;1mPost Columns (39.0ms)[0m   [0mSHOW FIELDS FROM `posts`[0m
  [4;36;1mSQL (30.0ms)[0m   [0;1mBEGIN[0m
  [4;35;1mPost Create (30.0ms)[0m   [0mINSERT INTO `posts` (`updated_at`, `title`, `body`, `created_at`) VALUES('2008-12-31 13:29:02', 'My First Blog Post', 'here it is', '2008-12-31 13:28:00')[0m
  [4;36;1mSQL (30.0ms)[0m   [0;1mCOMMIT[0m
Redirected to #<Post:0x605340c>
Completed in 208ms (DB: 130) | 302 Found [http://localhost/posts]


Processing PostsController#show (for 127.0.0.1 at 2008-12-31 13:29:02) [GET]
  Parameters: {"id"=>"1"}
  [4;35;1mSQL (0.0ms)[0m   [0mSET SQL_AUTO_IS_NULL=0[0m
  [4;36;1mPost Columns (20.0ms)[0m   [0;1mSHOW FIELDS FROM `posts`[0m
  [4;35;1mPost Load (60.0ms)[0m   [0mSELECT * FROM `posts` WHERE (`posts`.`id` = 1) [0m
Rendering template within layouts/posts
Rendering posts/show
Rendered posts/_post (10.0ms)
Completed in 180ms (View: 50, DB: 80) | 200 OK [http://localhost/posts/1]


Processing PostsController#index (for 127.0.0.1 at 2008-12-31 13:29:15) [GET]
  [4;36;1mSQL (10.0ms)[0m   [0;1mSET SQL_AUTO_IS_NULL=0[0m
  [4;35;1mPost Load (0.0ms)[0m   [0mSELECT * FROM `posts` [0m
Rendering template within layouts/posts
Rendering posts/index
  [4;36;1mPost Columns (41.0ms)[0m   [0;1mSHOW FIELDS FROM `posts`[0m
Completed in 460ms (View: 359, DB: 51) | 200 OK [http://localhost/posts]


Processing PostsController#edit (for 127.0.0.1 at 2008-12-31 13:29:23) [GET]
  Parameters: {"id"=>"1"}
  [4;35;1mSQL (0.0ms)[0m   [0mSET SQL_AUTO_IS_NULL=0[0m
  [4;36;1mPost Columns (40.0ms)[0m   [0;1mSHOW FIELDS FROM `posts`[0m
  [4;35;1mPost Load (0.0ms)[0m   [0mSELECT * FROM `posts` WHERE (`posts`.`id` = 1) [0m
Rendering template within layouts/posts
Rendering posts/edit
Completed in 230ms (View: 130, DB: 40) | 200 OK [http://localhost/posts/1/edit]

```