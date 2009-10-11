class ModesManager
  def initialize
    @modes = Array.new()
  end
  def construct_hook object, name, trigger = Rubygame::EventTriggers::YesTrigger.new() , action = Rubygame::EventActions::MethodAction.new(:handle) , consumes = false, active = true
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
end
