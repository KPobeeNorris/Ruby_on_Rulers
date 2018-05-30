require "rulers/version"
require "rulers/routing"
require "rulers/util"
require "rulers/dependencies"
require "rulers/controller"

module Rulers
  class Application
    def call(env)
      byebug
      if env['PATH_INFO'] == '/favicon.ico'
        return [404,
          {'Content-Type' => 'text/html'}, []]
      end

      klass, act = get_controller_and_action(env)
      controller = klass.new(env)

      begin
        text = controller.send(act)
        [200, {'Content-Type' => 'text/html'}, [text]]
      rescue => e
        puts e.message
      end
    end
  end
end
