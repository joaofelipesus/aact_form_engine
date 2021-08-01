module AactFormEngine
  class Engine < ::Rails::Engine
    isolate_namespace AactFormEngine

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
