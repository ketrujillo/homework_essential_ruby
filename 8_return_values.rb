#Methods & Arguments Example Syntax
# def print_heading(content)
#   puts "=" * content.length
#   puts content
#   puts "=" * content.length
# end

# print_heading("Students")



#Generates running sum/ total method
def sum(list_of_numbers)
  running_total = 0
  list_of_numbers.each do |number|
    running_total = running_total + number.to_f
  end

end

#Utilizes sum method and divides by number of objects in array
def mean(list_of_numbers)

    sum / list_of_numbers.length.to_f
    # list_of_numbers.count - use later?

end

#Subtracts individual number in array from our created mean method and squares the result. Sums each individual result and divides by the total number of objects in the array (mean of the squared differences)
def variance(list_of_numbers)

  running_variance = 0
  list_of_numbers.each do |numb|
    running_variance = running_variance + ((numb - mean)**2)
  end
  running_variance / list_of_numbers.length.to_f

end

#calls the variance method we created and applies the square root
def standard_deviation(list_of_numbers)

  Math.sqrt(variance)

end


#Required Output
first_dataset = [1, 3, 5, 7, 15]
stdev1 = standard_deviation(first_dataset)
puts "The standard deviation of the first dataset is #{stdev1.round(2)}."

second_dataset = [10, 30, 50, 70, 1000]
stdev2 = standard_deviation(second_dataset)
puts "The standard deviation of the second dataset is #{stdev2.round(2)}."

