defmodule Point do
  def right({x,y}), do: {x+1, y}
  def left({x,y}), do: {x-1, y}
  def up({x,y}), do: {x, y+1}
  def down({x,y}), do: {x, y-1}

  def move({x1,y1}, {x2, y2}), do: {x1 + x2, y1 + y2}
  def transpose({x,y}), do: {y, x}
  def mirror({x, y}, w), do: {w-x, y}
  def flip({x,y}, w), do: {x, w-y}
  def rotate(point, 0, _w, _h) do
    point
  end
  def rotate(point, 90, w, _h) do
    point
    |> transpose
    |> mirror(w)
  end
  def rotate(point, 180, w, h) do
    point
    |> flip(h)
    |> mirror(w)
  end
  def rotate(point, 270, _w, h) do
    point
    |> flip(h)
    |> transpose
  end

  def origin, do: {0, 0}
  def new(x, y) when is_integer(x) and is_integer(y) do
    {x, y}
  end
  def origin?({0,0}), do: true
  def origin?(_point), do: false

  def identity?({x, y}) when x == y, do: true
  def identity?(_point), do: false

end
