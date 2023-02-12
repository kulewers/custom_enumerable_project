module Enumerable
  # Your code goes here
  def my_each_with_index
    i = 0
    while i < length
      yield(self[i], i)
      i += 1
    end
    self
  end

  def my_select
    arr = []
    i = 0
    while i < length
      arr << self[i] if yield(self[i]) == true
      i += 1
    end
    arr
  end

  def my_all?
    i = 0
    while i < length
      return false if yield(self[i]) == false

      i += 1
    end
    true
  end

  def my_any?
    i = 0
    while i < length
      return true if yield(self[i]) == true

      i += 1
    end
    false
  end

  def my_none?
    i = 0
    while i < length
      return false if yield(self[i]) == true

      i += 1
    end
    true
  end

  def my_count
    count = 0
    i = 0
    while i < length
      if yield(self[i]) == true
        count += 1
      end
      i += 1
    end
    count
  end

  def my_map
    arr = Array.new(length)
    i = 0
    while i < length
      arr[i] = yield(self[i])
      i += 1
    end
    arr
  end

  def my_inject(var = self[0])
    result = var
    i = 0
    while i < length
      result = yield(result, self[i])
      i += 1
    end
    result
  end
end

class Array
  def my_each
    i = 0
    while i < length
      yield self[i]
      i += 1
    end
    self
  end
end
