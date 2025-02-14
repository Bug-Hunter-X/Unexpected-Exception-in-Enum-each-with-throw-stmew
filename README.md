# Elixir Enum.each and Unexpected Exceptions

This example demonstrates a common pitfall when using `Enum.each` in Elixir: attempting to prematurely exit the enumeration using `throw`.  `Enum.each` does not provide a mechanism for handling exceptions raised within the enumeration function.  This leads to an unexpected exception and program crash.

The solution showcases alternatives using `Enum.reduce` or the more concise `Enum.find` to handle conditional exit situations.