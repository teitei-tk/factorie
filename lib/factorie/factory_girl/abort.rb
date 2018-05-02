require 'factory_girl'

module FactoryGirl
  module_eval do
    raise "FactoryGirl Module is not supported. Please switch to factory_bot"
  end
end
