jscover-ruby
============

JSCover helps developer to instrument javascript for code coverage collection.

Installation
============

Add following lines to your Gemfile, or manually gem install
gem 'mini_portile', '>0.4.1'
gem 'jscover', '>=1.0.4'

In your ruby code:
require 'jscover'

injected_code, source_lines = JSON.parse(JSCover.instrument('var p = 2;', 'my.js'))

You will get injected code and source code lines

Next steps
============

Rails support: middleware to instrument javascript in runtime and collect coverage data. (the code is ready, not tested yet)
More interesting coverage data research
