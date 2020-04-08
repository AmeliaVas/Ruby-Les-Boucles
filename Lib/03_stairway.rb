$s = 10 # Stair length
$data = [] # Data for X games

def game
  i = 0 # Incrementation for the game
  u_s = 0 # stair where the user begin the game


  until u_s == $s do
    throw_dice = rand(1..6) # Get a value between 1 and 6 (included)

    if (throw_dice == 5) || (throw_dice == 6)
      u_s += 1
    elsif (throw_dice == 1)
      u_s -= 1
    end

    #puts "#{throw_dice}: #{u_s} - #{$s} -> #{i}" # Debug
    i += 1
  end

  return i
end

def main(throw_number)
  throw_number.times do
    $data << game
  end

  puts "The player manages to reach the 10th step after about #{$data.sum(0.0) / $data.size} throws."
  puts "Based on a statistical series of #{throw_number} games"
end

main(1000)