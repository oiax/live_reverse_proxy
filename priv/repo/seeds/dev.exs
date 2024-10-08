Logger.configure(level: :warning)

filenames = ~w(
  owners
  virtual_hosts_and_servers
  administrators
)

Enum.map(filenames, fn filename ->
  IO.puts(filename)
  Code.eval_file("#{__DIR__}/dev/#{filename}.exs")
end)
