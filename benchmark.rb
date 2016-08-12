def benchmark (number_times)
  start_time = Time.now
  number_times.times do
  puts "hi"
end
puts (Time.now) - start_time
end

benchmark (100000)