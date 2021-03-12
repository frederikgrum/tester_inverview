$LOAD_PATH.unshift(__dir__) # Add the support folder to load path
$LOAD_PATH.unshift(File.expand_path('../..', __dir__)) # Add the project root folder to load path

require 'watir'
require 'webdrivers/chromedriver'
require 'active_support'
require 'active_support/core_ext'

Before do
  $browser ||= Watir::Browser.new :chrome
end
