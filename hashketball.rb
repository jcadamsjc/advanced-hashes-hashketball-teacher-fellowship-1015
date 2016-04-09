# Write your code here!

def game_hash()
  hash = {
    home:{
      team_name: "Brooklyn Nets",
      colors: ["Black","White"],
      players:[
         {
        player_name: "Alan Anderson",
        number: 0,
        shoe: 16,
        points: 22,
        rebounds: 12,
        assists: 12,
        steals: 3,
        blocks: 1,
        slam_dunks: 1

          },
        {
          player_name: "Reggie Evans",
        number: 30,
        shoe: 14,
        points: 12,
        rebounds: 12,
        assists: 12,
        steals: 12,
        blocks: 12,
        slam_dunks: 7

          },
       {
          player_name: "Brook Lopez",
        number: 11,
        shoe: 17,
        points: 17,
        rebounds: 19,
        assists: 10,
        steals: 3,
        blocks: 1,
        slam_dunks: 15

          },
        {
        player_name: "Mason Plumlee",
        number: 1,
        shoe: 19,
        points: 26,
        rebounds: 12,
        assists: 6,
        steals: 3,
        blocks: 8,
        slam_dunks: 5

          },
         {
          player_name: "Jason Terry",
        number: 31,
        shoe: 15,
        points: 19,
        rebounds: 2,
        assists: 2,
        steals: 4,
        blocks: 11,
        slam_dunks: 1

          }

        ]

      },
    away:{
      team_name: "Charlotte Hornets",
      colors: ["Turquoise","Purple"],
      players:[
        {
          player_name: "Jeff Adrien",
        number: 4,
        shoe: 18,
        points: 10,
        rebounds: 1,
        assists: 1,
        steals: 2,
        blocks: 7,
        slam_dunks: 2

          },
        {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10

          },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5

          },
         {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0

          },
       {
          player_name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12

          }

        ]
      }
    }
  return hash
end

def num_points_scored(pname)
  the_hash = game_hash()
  #the_hash[:home][:players].each{ |x| puts "something #{x[:points]}"}
  the_hash.each do |team,value|
    value[:players].each do |item|
      if item[:player_name] == pname
        return item[:points]
      end
    end
  end
end

def shoe_size(pname)
  the_hash = game_hash()
  #the_hash[:home][:players].each{ |x| puts "something #{x[:points]}"}
  the_hash.each do |team,value|
    value[:players].each do |item|
      if item[:player_name] == pname
        return item[:shoe]
      end
    end
  end
end

def player_numbers(pname)
  the_hash = game_hash()
  #the_hash[:home][:players].each{ |x| puts "something #{x[:points]}"}
  the_hash.each do |team,value|
    value[:players].each do |item|
      if item[:player_name] == pname
        return item[:number]
      end
    end
  end
end

def team_colors(tname)
  the_hash = game_hash()
  the_hash.each do |team,value|
    if value[:team_name] == tname
      return value[:colors]
    end
  end

end

def team_names()
  names = []
    the_hash = game_hash()
  the_hash.each do |team,value|
    names.push(value[:team_name])
  end
  return names
end

def player_numbers(tname)
  all_numbers = []
    the_hash = game_hash()
  the_hash.each do |team,value|
    if value[:team_name] == tname
       value[:players].each do |item|
         all_numbers.push(item[:number])
      end
    end
  end
    return all_numbers
end

def player_stats(pname)
  the_hash = game_hash()
  the_hash.each do |team,value|
    value[:players].each do |item|
      if item[:player_name] == pname
        item.reject!{ |k| k == :player_name }
        return item
      end
    end
  end
end

def big_shoe_rebounds()
  the_hash = game_hash()
  biggest_shoe = 0
  #first establish the biggest shoe size
  the_hash.each do |team,value|
    value[:players].each do |item|
      if item[:shoe] >= biggest_shoe
        biggest_shoe = item[:shoe]
      end
    end
  end
  #now go back and find that person's rebounds
   the_hash.each do |team,value|
    value[:players].each do |item|
      if item[:shoe] == biggest_shoe
        return item[:rebounds]
      end
    end
  end



end
