require 'mkmf'
require 'mini_portile'

recipe = MiniPortile.new "jscover-native", "1.0.0"
recipe.files = ['https://nodeload.github.com/jameshugit/jscover-native/tar.gz/v1.0.0']

checkpoint = "ports/.#{recipe.name}-#{recipe.version}-#{recipe.host}.installed"
unless File.exist?(checkpoint)
  recipe.configure_options = 'CFLAGS=-fPIC CPPFLAGS=-fPIC'
  recipe.cook
  File.write(checkpoint, '')
end

recipe.activate

$LIBPATH << File.join(recipe.path, 'lib')
$LIBS = $LIBS + " -ljscoverage -lm -lpthread -lstdc++"

create_makefile('jscover/jscover')
