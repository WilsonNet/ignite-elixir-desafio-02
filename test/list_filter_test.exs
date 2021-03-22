defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  test "filtering list for odd numbers" do
    assert ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"]) == 3
    assert ListFilter.call(["3", "6", "43", "banana", "6", "abc", "melão"]) == 2
    assert ListFilter.call(["abc", "comida"]) == 0
  end
end
