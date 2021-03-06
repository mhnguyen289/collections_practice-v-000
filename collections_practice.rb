def sort_array_asc (array)
  array.sort
end

def sort_array_desc (array)
  array.sort do |a, b|
    b <=> a
  end
end

def sort_array_char_count(array)
  array.sort do |a,b|
    a.length <=> b.length
  end
end

def swap_elements (array)
  temp = array[1]
  array[1] = array[2]
  array[2] = temp

  array
end

def reverse_array (array)
  array.reverse!
end

def kesha_maker(array)
  new_array =[]

  array.each {|word|
    word = word.split('')
    word[2] = "$"
    word = word.join('')
    new_array << word
  }
  new_array
end

def find_a(array)
  array.select {|element|
    element.start_with?("a")
  }
end

def sum_array(array)
  array.inject {|sum, element| sum + element}
end

def add_s(array)
  array.each_with_index.collect{|element, index|
    if index != 1
      element << "s"
    end
  }

  array
end



