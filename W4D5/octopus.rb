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

end

def merge(arr1, arr2)
  merged = []
  until arr1.empty? || arr2.empty?
    merged << ( arr1.first < arr2.first ? arr1.shift : arr2.shift )
  end
  merged
end

p "fiiiissshhhhhh"
sluggish_octopus(fishes)