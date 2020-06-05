fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def find_fish(fishes)
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

p "fiiiissshhhhhh"

find_fish(fishes)