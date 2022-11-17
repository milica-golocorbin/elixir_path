defmodule Learning.HelloWorldTest do
  use ExUnit.Case

  test "says 'Hello, World!'" do
    assert Learning.HelloWorld.hello() == "Hello, World!"
  end
end
