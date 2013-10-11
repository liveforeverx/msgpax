defmodule MessagePack do
  defmacro __using__(_) do
    quote do: import unquote(__MODULE__)
  end

  def pack(term) do
    __MODULE__.Serializer.process(term)
  end
end
