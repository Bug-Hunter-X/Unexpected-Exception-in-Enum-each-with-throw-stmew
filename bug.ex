```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    # Problem: This will raise an exception because Enum.each does not allow early termination
    throw(:exception)
  end
  IO.puts(x)
end)
```