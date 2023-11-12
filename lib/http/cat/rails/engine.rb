module Http
  module Cat
    module Rails
      class Engine < ::Rails::Engine
        config.exceptions_app = self.routes
      end
    end
  end
end
