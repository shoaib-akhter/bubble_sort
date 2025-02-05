# Bubble Sort Implementation in Ruby
# This function sorts an array using the Bubble Sort algorithm.
# It repeatedly swaps adjacent elements if they are in the wrong order.
# The algorithm runs in O(n^2) time complexity but includes an optimization to exit early if the array is already sorted.

def bubble_sort(array)
    n = array.length
    
    (n - 1).times do |pass|  # Outer loop for number of passes
      swapped = false  # Flag to track if any swaps were made
      
      (0...(n - pass - 1)).each do |i|  # Inner loop to compare adjacent elements
        if array[i] > array[i + 1]  # Swap if elements are in the wrong order
          array[i], array[i + 1] = array[i + 1], array[i]  # Ruby swap shorthand
          swapped = true  # Mark that a swap occurred
        end
      end
      
      break unless swapped  # Optimization: Stop if no swaps happened in a full pass
    end
    
    array  # Return sorted array
  end
  
  # Test Cases
  if __FILE__ == $0
    puts bubble_sort([4, 3, 78, 2, 0, 2]).inspect  # Expected: [0, 2, 2, 3, 4, 78]
    puts bubble_sort([5, 1, 4, 2, 8]).inspect  # Expected: [1, 2, 4, 5, 8]
    puts bubble_sort([9, 7, 5, 3, 1]).inspect  # Expected: [1, 3, 5, 7, 9]
    puts bubble_sort([1, 2, 3, 4, 5]).inspect  # Expected: [1, 2, 3, 4, 5] (Already sorted case)
  end
  