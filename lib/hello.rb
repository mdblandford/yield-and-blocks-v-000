def hello_t(array)
  if block_given?
      # block_given? is a boolean
    i = 0
    # i is a counter variable representing each index number in the array
    while i < array.length
      yield array[i]
        # this yields each successive index number as we proceed through the loop
      i = i+1
    end
  array
  else
    puts "Hey! No block was given!"
  end
end

# call your method here!
hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
