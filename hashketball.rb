require "pry"

def game_hash()
    game = {
        :home => {
            :team_name => "Brooklyn Nets",
            :colors => ["black", "white"],
            :players => 
                [ 
                    {
                        :player_name => "Alan Anderson",
                        :number => 0,
                        :shoe => 16,
                        :points => 22,
                        :rebounds => 12,
                        :assists => 12,
                        :steals => 3,
                        :blocks => 1,
                        :slam_dunks => 1,
                    },
                    {
                        :player_name => "Reggie Evans",
                        :number => 30,
                        :shoe => 14,
                        :points => 12,
                        :rebounds => 12,
                        :assists => 12,
                        :steals => 12,
                        :blocks => 12,
                        :slam_dunks => 7
                    },
                    {
                        :player_name => "Brook Lopez",
                        :number => 11,
                        :shoe => 17,
                        :points => 17,
                        :rebounds => 19,
                        :assists => 10,
                        :steals => 3,
                        :blocks => 1,
                        :slam_dunks => 15
                    },
                    {
                        :player_name => "Mason Plumlee",
                        :number => 1,
                        :shoe => 19,
                        :points => 26,
                        :rebounds => 12,
                        :assists => 6,
                        :steals => 3,
                        :blocks => 8,
                        :slam_dunks => 5
                    },
                    {
                        :player_name => "Alan Anderson",
                        :number => 31,
                        :shoe => 15,
                        :points => 19,
                        :rebounds => 2,
                        :assists => 2,
                        :steals => 4,
                        :blocks => 11,
                        :slam_dunks => 1,
                    }
                ]
            
        },
        :away => {
            :team_name => "Charlotte Hornets",
            :colors => ["Turquoise", "Purple"],
            :players => 
                [ 
                    {
                        :player_name => "Jeff Adrien",
                        :number => 4,
                        :shoe => 8,
                        :points => 10,
                        :rebounds => 1,
                        :assists => 1,
                        :steals => 2,
                        :blocks => 7,
                        :slam_dunks => 2,
                    },
                    {
                        :player_name => "Bismack Biyombo",
                        :number => 0,
                        :shoe => 16,
                        :points => 12,
                        :rebounds => 4,
                        :assists => 7,
                        :steals => 7,
                        :blocks => 15,
                        :slam_dunks => 10
                    },
                    {
                        :player_name => "DeSagna Diop",
                        :number => 2,
                        :shoe => 14,
                        :points => 24,
                        :rebounds => 12,
                        :assists => 12,
                        :steals => 4,
                        :blocks => 5,
                        :slam_dunks => 5
                    },
                    {
                        :player_name => "Ben Gordon",
                        :number => 8,
                        :shoe => 15,
                        :points => 33,
                        :rebounds => 3,
                        :assists => 2,
                        :steals => 1,
                        :blocks => 1,
                        :slam_dunks => 0
                    },
                    {
                        :player_name => "Brendan Haywood",
                        :number => 33,
                        :shoe => 15,
                        :points => 6,
                        :rebounds => 12,
                        :assists => 12,
                        :steals => 22,
                        :blocks => 5,
                        :slam_dunks => 12,
                    }
                ]
            
        }
    }
end

def num_points_scored(player)
    # score = 0
    # found = false

    # go through these hashes
    game_hash.each do |state, team|
        # binding.pry
        # go through each player
        # break if found == true
        team[:players].each do |stat_list|
            # binding.pry # tells us that stat_list[:points] is an integer, 10 where the player's name is Jeff Adrien
            # if the name matches our passed player
            # break if found == true
            if stat_list[:player_name] == player
                # send us the score
                puts "#{player} FOUND: #{stat_list[:player_name]} scored #{stat_list[:points]}" #This prints the points in a string
                puts stat_list[:points] # This prints the points as an integer
                # puts stat_list[:points].is_a?(String)
                puts stat_list[:points].is_a?(Integer) # Correct, this is an integer
                # puts stat_list[:points].is_a?(Float)
                # puts stat_list[:points].is_a?(Hash)
                # puts stat_list[:points].is_a?(Symbol)

                # puts score
                # return score
                # found = true
                return stat_list[:points] # But when I return it, I get the whole game_hash object
            else          
                puts "#{player} NOT FOUND: #{stat_list[:player_name]} scored #{stat_list[:points]}"
            end
        end
    end
    # score
    # In conclusion, - I'm confused
end
# num_points_scored("Brendan Haywood")

def shoe_size()

end

def team_colors()

end

def team_names()

end

def player_numbers()

end

def player_stats()

end

def big_shoe_rebounds()

end


# bonus

def most_points_scored()

end

def winning_team()

end

def player_with_longest_name()

end

# super bonus
def long_name_steals_a_ton?()

end











