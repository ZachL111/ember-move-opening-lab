defmodule EmberMoveOpeningLabTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 82, capacity: 95, latency: 14, risk: 6, weight: 12}
    assert EmberMoveOpeningLab.score(signal_case_1) == 239
    assert EmberMoveOpeningLab.classify(signal_case_1) == "accept"
    signal_case_2 = %{demand: 83, capacity: 90, latency: 9, risk: 19, weight: 11}
    assert EmberMoveOpeningLab.score(signal_case_2) == 172
    assert EmberMoveOpeningLab.classify(signal_case_2) == "accept"
    signal_case_3 = %{demand: 90, capacity: 92, latency: 11, risk: 6, weight: 11}
    assert EmberMoveOpeningLab.score(signal_case_3) == 258
    assert EmberMoveOpeningLab.classify(signal_case_3) == "accept"
  end
end
