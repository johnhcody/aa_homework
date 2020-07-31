require 'byebug'
# Find the longest fish in O(n^2) time
def sluggish_octopus(arr)
    biggest = ""
    arr.each_with_index do |fish1, idx2|
        arr[1..-1].each_with_index do |fish2, idx2|
            if fish1.length > fish2.length && fish1.length > biggest.length
                biggest = fish1
            end
        end
    end
    biggest
end

def dominant_octopus(arr, &prc)

    prc ||= Proc.new { |fish1, fish2| fish1 <=> fish2 }

    return arr if arr.length < 2

    mid = arr.length / 2

    left = dominant_octopus(arr.take(mid))
    right = dominant_octopus(arr.drop(mid))

    merge(left,right, &prc)

end


def merge(left, right, &prc)

    prc ||= Proc.new { |fish1, fish2| fish1 <=> fish2 }

    merged = []
    until left.empty? || right.empty? 
        #debugger
        case prc.call(left[-1], right[-1])
        when -1
            #debugger
            merged << left.shift
        when 0
            #debugger
            merged << left.shift
        when 1
            #debugger
            merged << right.shift
        end
    end
    merged.concat(left)
    merged.concat(right)

    merged[-1]

end


def clever_octopus(arr)

    arr.inject {|acc, max| acc.length > max.length ? acc : max}

end

def slow_dance(move_string, arr)

    moves = 0
    arr.each do |ele|
        moves += 1 if ele != move_string
        return moves if ele == move_string
    end

end



def fast_dance(move_string, hash)

    if hash.has_key?(move_string)
        return hash[move_string]
    end

end





fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
#=> "fiiiissshhhhhh"

#p sluggish_octopus(fish)
#p dominant_octopus(fish)
#p clever_octopus(fish)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right" => 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

#p dancing_octopus(tiles_array)
# p slow_dance("up", tiles_array)
# p slow_dance("right-down", tiles_array)
p fast_dance("right-down", tiles_hash)
