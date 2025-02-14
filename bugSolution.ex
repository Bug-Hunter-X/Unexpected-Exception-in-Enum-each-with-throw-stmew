```elixir
list = [1, 2, 3, 4, 5]

# Solution 1: Using Enum.reduce
result = Enum.reduce(list, nil, fn x, acc ->
  if x == 3 do
    {:halted, acc}
  else
    IO.puts(x)
    acc
  end
end)

case result do
  {:halted, acc} -> IO.puts("Enumeration halted")
  _ -> IO.puts("Enumeration completed")
end

# Solution 2: Using Enum.find
found = Enum.find(list, fn x -> x == 3 end)

if found do
  IO.puts("Found 3!")
else
  IO.puts("3 not found!")
end

#Alternative using Enum.take_while
Enum.take_while(list, fn x -> x != 3 end) |> Enum.each(fn x -> IO.puts(x) end)

```