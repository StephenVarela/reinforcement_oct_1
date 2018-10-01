ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]


my_hash = {}

ballots.each do |ballot|
  ballot.each do |key, value|
    if my_hash[value]

    else
      my_hash[value] = 0
    end

    if(key == 1)
      my_hash[value] += 3
    elsif(key == 2)
      my_hash[value] += 2
    elsif(key == 3)
      my_hash[value] += 1
    end
  end
end

puts my_hash.max_by{|k,v| v}
