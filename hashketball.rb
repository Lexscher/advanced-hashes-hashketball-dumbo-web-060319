require "pry"

def game_hash
    game = {
        :home => {
            :team_name => "Brooklyn Nets",
            :colors => ["Black", "White"],
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
                        :player_name => "Jason Terry",
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
                        :shoe => 18,
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

######-----v Helper functions v-----######
# Find a player
def find_player(player)
    game_hash.each do |state, team|

        team[:players].each do |stat_list|

            if player == stat_list[:player_name] 
                             
                return stat_list
            else
                puts "Nothin to see here!"
            end
        end
    end
end

# Find a team
def find_team(name)
    
    game_hash.find do |state, team|
        if team[:team_name] == name
            return team[:colors]
        end
    end

end
######-----^ Helper functions ^-----######


def num_points_scored(player)
    score = 0
    score = find_player(player)[:points]
end


def shoe_size(player)
    size = 0
    size = find_player(player)[:shoe]
end

def team_colors(name)
    game_hash.find do |state, team|
        if team[:team_name] == name
            return team[:colors]
        end
    end
end

# def team_names()

# end

# def player_numbers()

# end

# def player_stats()

# end

# def big_shoe_rebounds()

# end


# # bonus

# def most_points_scored()

# end

# def winning_team()

# end

# def player_with_longest_name()

# end

# # super bonus
# def long_name_steals_a_ton?()

# end











