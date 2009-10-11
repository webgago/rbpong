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
end
