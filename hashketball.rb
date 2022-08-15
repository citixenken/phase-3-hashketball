# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
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
          rebounds: 11,
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
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
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
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
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
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

#HELPER METHODS
# ===============

# all players
def all_players
  game_hash[:home][:players] + game_hash[:away][:players] 
end
# puts all_players

# player_stats
def player_stats(player_name)
  all_players.find { |player| player[:player_name] == player_name }
end
# puts player_stats("Kemba Walker")

# helper method to find a team by their team name
def find_team(team_name)
  # #find on with a hash returns an array with the first key and value that match the condition
  team_details = game_hash.find do |team_location, team_data|
    team_data[:team_name] == team_name
  end

  # return just the value (team_data) from the .find method
  team_details[1]
end
# puts find_team("Charlotte Hornets")

#helper method to find the player with biggest shoe
def big_shoe_player
  all_players.max_by { |player| player[:shoe]}
end
# puts big_shoe_player

# ==============================================================

# 1. num_points_scored ✅
#=====================
def num_points_scored(player_name)
  player = player_stats(player_name)
  player[:points]
end
# puts num_points_scored("Bismack Biyombo")

# 2. shoe_size ✅
#=====================
def shoe_size(player_name)
  player = player_stats(player_name)
  player[:shoe]
end
# puts shoe_size("Bismack Biyombo")

# 3. team_colors ✅
#=====================
def team_colors(team_name)
  team = find_team(team_name)
  team[:colors]
end
# puts team_colors("Brooklyn Nets")

# 4. team_names ✅
#=====================
def team_names
  game_hash.map { |team_location, team_data| team_data[:team_name] }
end
# puts team_names

# 5. player_numbers ✅
#=====================
def player_numbers(team_name)
  team = find_team(team_name)
  team[:players].map {|player| player[:number]}
end
# puts player_numbers("Brooklyn Nets")

# 7. big_shoe_rebounds ✅
#=====================
def big_shoe_rebounds
  big_shoe_player[:rebounds]
end
puts big_shoe_rebounds

# 8. most_points_scored
#=====================
def most_points_scored(player_name)
  
end
# puts most_points_scored("Bismack Biyombo")

# 9. winning_team
#=====================
def winning_team(team_name)
 
end
# puts winning_team("Brooklyn Nets")

# 10. player_with_longest_name
#=====================
def player_with_longest_name(player_name)
 
end
# puts player_with_longest_name("Bismack Biyombo")

# 11. long_name_steals_a_ton
#=====================
def long_name_steals_a_ton(player_name)
  
end
# puts long_name_steals_a_ton("Bismack Biyombo")

