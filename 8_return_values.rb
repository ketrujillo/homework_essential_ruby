# Return values

# Suppose we want to do some data analysis.
# Eventually, I want to print the STANDARD DEVIATION of a set of numbers.
# In other words, if I have a set of numbers like this:

#     first_dataset = [93, 65, 87, 68, 2, 64, 36, 96, 45, 47]

# Then I want to be able to do something like this:

#     stdev1 = standard_deviation(first_dataset)

# And have it work.

# In order to find the STANDARD DEVIATIONS of sets of numbers, we have
# to be able to find VARIANCES. In order to find VARIANCES, we have to be
# able to find SUMS and MEANS.

# So, let us first define some tools that will be helpful in taking the
# intermediate steps:

# SUM
# ===
# To find the sum of a set of numbers,
#  - we start with 0
#  - for each number in the set,
#   - we add it to the running total
#  - after we've looked at every number, the running total is the sum

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

# MEAN
# ====
# To find the mean of a set,
#  - we sum up all the elements
#  - then we divide the sum by the number of elements in the set

def mean(list_of_numbers)

    sum / list_of_numbers.length.to_f
    # list_of_numbers.count - use later?
#Utilizes sum method and divides by number of objects in array

end

# VARIANCE
# ========
# To find the variance of a set,
#  - we find the mean of the set
#  - for each number in the set,
#   - we find the difference between the number and the mean
#   - we square the difference
#  - the variance is the mean of the squared differences

def variance(list_of_numbers)
  # Let's re-use the work we did above in the mean method

  # ====================
  running_variance = 0
  list_of_numbers.each do |numb|
    running_variance = running_variance + ((numb - mean)**2)
  end
  running_variance / list_of_numbers.length.to_f


#Subtracts individual number in array from our created mean method and squares the result. Sums each individual result and divides by the total number of objects in the array (mean of the squared differences)


  # ====================
end

# STANDARD DEVIATION
# ==================
# To find the standard deviation of a set,
#  - take the square root of the variance

def standard_deviation(list_of_numbers)
  # ====================
  Math.sqrt(variance)
  #calls the variance method we created and applies the square root
  # ====================
end


# Finally, everything above allows us to do:

first_dataset = [93, 65, 87, 68, 2, 64, 36, 96, 45, 47]
stdev1 = standard_deviation(first_dataset)
puts "The standard deviation of the first dataset is #{stdev1.round(2)}."

second_dataset = [2, 9, 405, 562, 740, 133, 346, 509, 21, 93]
stdev2 = standard_deviation(second_dataset)
puts "The standard deviation of the second dataset is #{stdev2.round(2)}."
