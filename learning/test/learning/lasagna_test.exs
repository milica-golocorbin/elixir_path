defmodule Learning.LasagnaTest do
  use ExUnit.Case
  alias Learning.Lasagna

  test "expected minutes in oven" do
    assert Lasagna.expected_minutes_in_oven() == 40
  end

  test "remaining minutes in oven" do
    assert Lasagna.remaining_minutes_in_oven(10) == 30
  end

  test "preparation time in minutes for one layer" do
    assert Lasagna.preparation_time_in_minutes(1) == 2
  end

  test "preparation time in minutes for multiple layers" do
    assert Lasagna.preparation_time_in_minutes(5) == 10
  end

  test "total time in minutes for one layer" do
    assert Lasagna.total_time_in_minutes(1, 30) == 32
  end

  test "total time in minutes for multiple layers" do
    assert Lasagna.total_time_in_minutes(5, 30) == 40
  end

  test "notification message" do
    assert Lasagna.alarm() == "Ding!"
  end
end
