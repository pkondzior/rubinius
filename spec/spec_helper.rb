$:.unshift File.dirname(__FILE__)

begin
  if ENV['USE_RSPEC'] == '1'
    require 'rspec_helper'
  else
    require 'mspec_helper'
  end
rescue
  require 'mspec_helper'
end

def rubinius_examples
  Object.const_defined?(:RUBY_ENGINE) and RUBY_ENGINE == 'rbx'
end
