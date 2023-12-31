def bubble_sort(array)
  n = array.length

  loop do
    swapped = false

    (n - 1).times do |i|
      next unless array[i] > array[i + 1]

      # Swap
      array[i], array[i + 1] = array[i + 1], array[i]
      swapped = true
    end

    break unless swapped
  end

  p array
end

bubble_sort([4, 3, 78, 2, 0, 2])
