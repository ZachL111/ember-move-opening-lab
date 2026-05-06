defmodule EmberMoveOpeningLab.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 79, slack: 28, drag: 19, confidence: 74}
    assert EmberMoveOpeningLab.DomainReview.score(item) == 203
    assert EmberMoveOpeningLab.DomainReview.lane(item) == "ship"
  end
end
