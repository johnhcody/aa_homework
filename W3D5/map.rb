class Map

    def initialize
        @map = Array.new
    end

    def set(key, value)
        pair = [key, value]

        i = 0
        while i < @map.length
            if @map[i][0] == key
                @map[i][1] = value
                return @map
            end
            i += 1
        end

        @map.push(pair)
    end

    def get(key)

        i = 0
        while i < @map.length
            if @map[i][0] == key
                return "#{i} is the index"
            end
            i += 1
        end

        puts "sorry, that key is not in this map"
    end

    def delete(key)

        @map.delete_if {|sub_array| sub_array[0] == key}

    end

    def show(key)

        i = 0
        while i < @map.length
            if @map[i][0] == key
                return @map[i]
            end
            i += 1
        end
        puts "sorry, that key is not in this map"
    end

    def display
        @map
    end

end


m = Map.new

m.set(1, "a")
m.set(2, "b")
m.set(3, "c")
m.set(4, "d")
m.set(4, "a")
m.set(4, "x")
m.set(3, "y")
m.set(5, "z")
puts "------"
p m
puts "------"
p m.get(5)
puts "------"
p m.show(5)
puts "------"
p m.display
puts "------"
p m.delete(3)
puts "------"
p m.set(2, "a")
puts "------"
