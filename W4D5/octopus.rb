fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(fishes)
  longest_fish = ""
  fishes.each do |fish_1|
    fishes.each do |fish_2|
      if fish_1.length > fish_2.length
        longest_fish = fish_1
      elsif fish_2.length > fish_1.length
        longest_fish = fish_2
      end
    end
  break
  end
  p longest_fish
end

def dominant_octopus(fishes)
  arr_length = fishes.length 
  return fishes if arr_length <= 1
  mid = arr_length / 2
  arr = fishes.dup
  left = arr.take(mid)
  right = arr.drop(mid)

  sorted_left = dominant_octopus(left)
  sorted_right = dominant_octopus(right)

  merge(sorted_left, sorted_right)
end

def merge(arr1, arr2)
  merged = []
  until arr1.empty? || arr2.empty?
    merged << ( arr1.first.length < arr2.first.length ? arr1.shift : arr2.shift )
  end
  merged + arr1 + arr2
end

p "fiiiissshhhhhh"
sluggish_octopus(fishes)
p dominant_octopus(fishes).last