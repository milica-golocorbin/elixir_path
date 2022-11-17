defmodule Learning.PacmanRulesTest do
  use ExUnit.Case
  alias Learning.PacmanRules

  test "ghost gets eaten" do
    assert PacmanRules.eat_ghost?(true, true)
  end

  test "ghost does not get eaten because no power pellet active" do
    refute PacmanRules.eat_ghost?(false, true)
  end

  test "ghost does not get eaten because not touching ghost" do
    refute PacmanRules.eat_ghost?(true, false)
  end

  test "ghost does not get eaten because no power pellet is active, even if not touching ghost" do
    refute PacmanRules.eat_ghost?(false, false)
  end

  test "score when eating dot" do
    assert PacmanRules.score?(false, true)
  end

  test "score when eating power pellet" do
    assert PacmanRules.score?(true, false)
  end

  test "no score when nothing eaten" do
    refute PacmanRules.score?(false, false)
  end

  test "lose if touching a ghost without a power pellet active" do
    assert PacmanRules.lose?(false, true)
  end

  test "don't lose if touching a ghost with a power pellet active" do
    refute PacmanRules.lose?(true, true)
  end

  test "don't lose if not touching a ghost" do
    refute PacmanRules.lose?(true, false)
  end

  test "win if all dots eaten" do
    assert PacmanRules.win?(true, false, false)
  end

  test "don't win if all dots eaten, but touching a ghost" do
    refute PacmanRules.win?(true, false, true)
  end

  test "win if all dots eaten and touching a ghost with a power pellet active" do
    assert PacmanRules.win?(true, true, true)
  end
end
