$: << File.expand_path("../../lib", File.dirname(__FILE__))
require 'aruba/cucumber'

Before do
  @dirs = File.join(File.dirname(__FILE__), "../..")
end
