module Cfp
  class Engine < ::Rails::Engine
    isolate_namespace Cfp

    # Load decorators on main app
    config.to_prepare do
      Dir.glob(Rails.root + "app/decorators/**/*_decorator*.rb").each do |c|
        require_dependency(c)
      end
    end
  end
end
