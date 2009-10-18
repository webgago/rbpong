class Registrar
  include Rubygame::EventHandler::HasEventHandler
  def initialize
    @hooks = []
  end
  def construct_hook object , name, trigger =  Rubygame::EventTriggers::YesTrigger.new() , action = Rubygame::EventActions::MethodAction.new(:handle) , consumes = false, active = true
    hook = {
    :owner => object, 
    :trigger => trigger,
    :action => action,
    :consumes => consumes,
    :active => true,
    :identifer => name
    }
    @hooks << hook
  end
  def destroy name
    n = 0
    @hooks.each do |hook|
      if hook[:identifer] == name
        @hooks.delete_at(n)
      end
      n += 1
    end
  end
end
