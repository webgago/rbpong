class TestRegistrar < Test::Unit::TestCase
  def setup
    @registrar = Registrar.new()
  end
  def test_initialize
    assert @registrar.instance_variable_get(:@hooks).class == Array
    assert @registrar.instance_variable_get(:@hooks).size() == 0
  end
end
