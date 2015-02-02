module Polywag
  class Engine < ::Rails::Engine
    initializer  "polywag.load_polywag" do
      ActionController::Base.send :include, Polywag::ControllerAdditions
    end
  end
end
