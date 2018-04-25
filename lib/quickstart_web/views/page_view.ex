defmodule QuickstartWeb.PageView do
  use QuickstartWeb, :view

  def random_hanzi(count) do
    # Return sequence of `count` random hanzi characters
    for _ <- 1..count do
      ordinal = Enum.random(0x4e00..0x9fff)
      List.to_string([ordinal])
    end
  end
end
