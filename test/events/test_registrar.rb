class TestRegistrar < Test::Unit::TestCase
  def get_hooks
    return @registrar.instance_variable_get(:@hooks).cass
  end
  def setup
    @registrar = Registrar.new()
  end
  def test_initialize
    assert @registrar.instance_variable_get(:@hooks).class == Array
    assert @registrar.instance_variable_get(:@hooks).size() == 0
  end
end
