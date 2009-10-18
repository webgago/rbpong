class TestRegistrar < Test::Unit::TestCase
  def get_hooks
    return @registrar.instance_variable_get(:@hooks)
  end
  def setup
    @registrar = Registrar.new()
  end
  def test_initialize
    hooks = get_hooks()
    assert hooks.class == Array
    assert hooks.size() == 0
  end
  def test_construct_hook
    @nilObject = NilClass
    @registrar.construct_hook(@nilObject, :test)
    hooks = get_hooks()
    assert hooks[0][:trigger].class == Rubygame::EventTriggers::YesTrigger
    assert hooks[0][:action].class == Rubygame::EventActions::MethodAction
    assert hooks[0][:consumes] == false
    assert hooks[0][:active] == true
    assert hooks[0][:identifer] == :test
  end
  def test_create_destroy
    object = NilClass
    another = NilClass #Add another object to know that we're deleting or all of them
    @registrar.construct(object, :test)
    @registrar.construct(another, :test2)
    hooks = get_hook()
    assert hooks.size() == 2
    @registrar.destroy(:test)
    assert hooks.size() == 1
  end
end
