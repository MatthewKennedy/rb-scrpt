require "rubygems"

require "./src/lib/version.rb"

Gem::Specification.new do |s|
  s.name = "rb-scrpt"
  s.version = Appscript::Version
  s.homepage = "https://github.com/MatthewKennedy/rb-scrpt"
  s.summary="This is a fork of the original rb-appscript. Ruby AppleScript (rb-scpt) is a high-level, user-friendly Apple event bridge that allows you to control scriptable Mac OS X applications using ordinary Ruby scripts."
  s.files = Dir["**/*"].delete_if { |name| ["MakeFile", "ae.bundle", "mkmf.log", "rbae.o", "SendThreadSafe.o", "src/osx_ruby.h", "src/osx_intern.h"].include?(name) }
  s.extensions = "extconf.rb"
  s.test_files = Dir["test/test_*.rb"]
  s.authors = ["hhas","Brendan Thompson"]
  s.email = 'm.kennedy@me.com'
  s.required_ruby_version = ">= 1.8"
end
