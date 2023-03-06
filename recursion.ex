defmodule MyRecursion do
  def total([]), do: 0
  def total([head|tail]) do
    head + total(tail)
  end

  def fibonacci(0), do: 1
  def fibonacci(1), do: 2
  def fibonacci(n), do: fibonacci(n-1) + fibonacci(n-2)

  def total_with_accumulator([], partial_total) do
    partial_total
  end

  def total_with_accumulator([head|tail], partial_total) do
    total_with_accumulator(tail, partial_total + head)
  end

  def fibonacci_with_acc(0, acc1, acc2), do: 0
  def fibonacci_with_acc(1, acc1, acc2), do: acc1 + acc2
  def fibonacci_with_acc(n, acc1, acc2) do
    fibonacci_with_acc(n-1, acc2, acc1 + acc2)
  end

end
