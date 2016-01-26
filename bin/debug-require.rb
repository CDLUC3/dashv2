unless $debug_require
  def require(path)
    result = super
    msg = "require(#{path}) => #{result} (#{caller[0]})"
    File.open('/tmp/require.log', 'a') { |f| f.puts(msg) }
    puts(msg)
    result
  end
  $debug_require = true
end
