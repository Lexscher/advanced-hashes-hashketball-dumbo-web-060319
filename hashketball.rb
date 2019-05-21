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

            end
        end
    end
end


# Find a team
def find_team(name)
    
    game_hash.find do |state, team|
        t = team[:team_name]
        return t if t == name
    end

end

# Find All Players on a specific team
def find_players(name_of_team)
    game_hash.each do |state, team|
        t = team[:team_name]
        p = team[:players]
        return p if t == name_of_team
    end
end

# Find Every Player EVER
def all_players
    all = []
    game_hash.each do |state, team|       
        t = team[:players]
        t.map{|p| all << p}
    end

    all
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

def team_names
    teams = []
    teams << find_team("Brooklyn Nets")
    teams << find_team("Charlotte Hornets")

    teams
end

def player_numbers(team)
    jersey_numbers = []
    find_players(team).map{|p| jersey_numbers << p[:number]}

    jersey_numbers
end

def player_stats(player)
    stats_only = {}

    id = find_player(player)

    id.map do |title, stat|
        if stat != player
            stats_only[title] = stat
        end
    end
       
    stats_only
end

def big_shoe_rebounds
    biggest_shoe_size = 0
    total_rebounds = 0

    all_players.map do |stat_list|
        if stat_list[:shoe] > biggest_shoe_size
            biggest_shoe_size = stat_list[:shoe]
            total_rebounds = stat_list[:rebounds]
        end
    end

    total_rebounds
end


# bonus

def most_points_scored
    high_score = 0
    player = ""

    all_players.each do |stat_list|
        
        if stat_list[:points] > high_score
            high_score = stat_list[:points]
            player = stat_list[:player_name]
        end

    end

    player
end

def winning_team
    bk = find_players("Brooklyn Nets")
    cl = find_players("Charlotte Hornets")
    bk_total = 0
    cl_total = 0

    bk.map{|p| bk_total += p[:points]}
    cl.map{|p| bk_total += p[:points]}

    if bk_total > cl_total
        "Brooklyn Nets"
    else
        "Charlotte Hornets"
    end
end

def player_with_longest_name
    player = ""
    name_length = 0

    all_players.collect do |stats|
        name = stats[:player_name]
        if name.length >= name_length
            player = name
            name_length = name.length
        end
    end
    player
end

# # super bonus
def long_name_steals_a_ton?()

    steals = 0
    player = ""

    all_players.each do |stats|
        
        if stats[:steals] > steals
            steals = stats[:steals]
            player = stats[:player_name]
        end

    end

    true if player == player_with_longest_name

end











