class Registrar
  include Rubygame::EventHandler::HasEventHandler
  def initialize
    @hooks = []
  end
end
