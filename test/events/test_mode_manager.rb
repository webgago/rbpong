class TestModeManager < Test::Unit::TestCase
  def setup
    @manager = ModesManager.new()
  end
  def test_initialize
    assert @manager.instance_variable_gets(:modes).class == Array
    assert @manager.instance_variable_gets(:modes).size() == 0
  end
end
