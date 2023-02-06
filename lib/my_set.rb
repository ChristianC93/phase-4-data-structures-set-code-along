class MySet
    attr_reader :hash
  
    def initialize(enumerable = [])
      @hash = Hash[enumerable.map { |value| [value, true] }]
    end
  
    def include?(value)
      hash.key?(value)
    end
  
    def add(value)
      hash[value] = true
      self
    end
  
    def delete(value)
      hash.delete(value)
      self
    end
  
    def size
      hash.size
    end
  
    def self.[](*enumerable)
      new(enumerable)
    end
  
    def clear
      hash.clear
      self
    end

    def each
        hash.each_key do |key|
            yield key
        end
        self
    end

    def inspect
        "#<MySet: {#{hash.keys.join(", ")}}>"
    end

  end
  
  set = MySet.new([1, 2, 3, 3])
  