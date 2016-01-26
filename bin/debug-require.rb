unless $debug_require
  def require(path)
    msg = "require: (#{path}) #{caller[0]}"
    File.open('/tmp/require.log', 'a') { |f| f.puts(msg) }
    puts(msg)
  end
  $debug_require = true
end
