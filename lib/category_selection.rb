require '/Users/matthewdizon/Desktop/flatiron/Ruby/Week3/module-one-final-project-guidelines-dumbo-web-100818/lib/see_scores.rb'
def category_selection(user)
    prompt = TTY::Prompt.new
    # add ascii art
    resp = prompt.select("Please select the category",["U.S Governors", "Music", "Art", "See High Scores", "Sign Out"])
    case resp
    when "U.S Governors"
        puts`clear`
        governor(user)
    when "Music"
        puts`clear`
        music(user)
    when "Art"
        puts`clear`
        art(user)
    when "See High Scores"
        puts`clear`
        all_scores(user)
    when "Sign Out"
        puts`clear`
        homescreen
    end
end

def governor(user)
    prompt = TTY::Prompt.new
    promptA = TTY::Prompt.new

    user.category = Category.first
    question_selected = Question.where(:category =>"U.S Governors").sample
    puts question_selected.question
    puts ""
    resp = prompt.select("Please select R for Republican or D for Democrat",
         %w(R D))
         puts`clear`
    if resp == question_selected.answer

        user.score +=1
        user.save
        puts "Correct!!!"
        puts ""
        puts "Your score is #{user.score}"
        puts ""
        respA = prompt.select("Would you like to continue with this topic in not we will add your
score to the leaderboard and return you to the Main Menu",
             %w(Yes No))
             if respA == "Yes"
                 puts`clear`
                 governor(user)
            else
                player_score_relation = Score.create(score: 0)
                player_score_relation.user = user.user
                player_score_relation.save
                puts`clear`
                category_selection(player_score_relation)
            end
    else
       pid = fork{ exec 'afplay', "./music/wrong.mp3"}
        puts "Sorry wrong answer the correct answer is #{question_selected.answer}"
        puts ""
        puts "LOSER"
        puts ""
        puts "Your score is #{user.score}"
        puts ""
        respA = prompt.select("Would you like to continue with this topic in not we will add your
score to the leaderboard and return you to the Main Menu",
             %w(Yes No))
             if respA == "Yes"
                 puts`clear`
                 governor(user)
            else
                player_score_relation = Score.create(score: 0)
                player_score_relation.user = user.user
                player_score_relation.save
                puts`clear`
                category_selection(player_score_relation)
            end
    end
end

def music(user)
    prompt = TTY::Prompt.new
    # ask the question sampled from this category
    # increment score if correct
    #also display a screen for option to see high scores for this category
    # and an option to sign out

    user.category = Category.second
    question_selected = Question.where(:category =>"Music").sample
    puts question_selected.question
    puts ""
    pid = fork{ exec 'afplay', question_selected.music_url }
    sleep(5)
    fork{ exec 'killall afplay'}
    resp = prompt.select("Please select the artist",
         ["Pink Floyd", "Whitney Houston ", "Kendrick Lamar", "Drake",
             "Beyonce", "Future", "Ariana Grande", "Bruce Springsteen",
             "Mariah Carey","The Doors","Cardi B","Adele", "Rihanna",
             "Michael Jackson","Stevie Wonder"])
    puts ""
    if resp == question_selected.answer
        user.score +=1
        user.save
        puts "Correct!!! Please Select from another category"
        puts ""
        puts "Your score is #{user.score}"
        puts ""
        respA = prompt.select("Would you like to continue with this topic in not we will add your
score to the leaderboard and return you to the Main Menu",
             %w(Yes No))
             if respA == "Yes"
                 puts`clear`
                 music(user)
            else
                player_score_relation = Score.create(score: 0)
                player_score_relation.user = user.user
                player_score_relation.save
                puts`clear`
                category_selection(player_score_relation)
            end
    else
       pid = fork{ exec 'afplay', "./music/wrong.mp3"}
        puts "Sorry wrong answer the correct answer is #{question_selected.answer} Loser"
        puts ""
        puts "Your score is #{user.score}"
        puts ""
        respA = prompt.select("Would you like to continue with this topic in not we will add your
score to the leaderboard and return you to the Main Menu",
             %w(Yes No))
             if respA == "Yes"
                 puts`clear`
                 music(user)
            else
                player_score_relation = Score.create(score: 0)
                player_score_relation.user = user.user
                player_score_relation.save
                puts`clear`
                category_selection(player_score_relation)
            end
    end
end
def art(user)
    prompt = TTY::Prompt.new
    # ask the question sampled from this category
    # increment score if correct
    #also display a screen for option to see high scores for this category
    # and an option to sign out
    user.category = Category.third
    question_selected = Question.where(:category =>"Art").sample
    puts question_selected.question
    puts ""
    resp = prompt.select("Please select the artist",
         ["Vincent Van Gogh", "Andy Warhol", "Salvador Dali", "Diego Rivera",
             "Gustav Klimt", "Frida Kahlo", "Pablo Picasso", "Rembrandt",
             "Banksy","Matisse","Mondrian","Michelangelo","Donatello",
             "Raphael","Leonardo Da Vinci"])
    puts ""
    if resp == question_selected.answer
        user.score +=1
        user.save
        puts "Correct!!! Please Select from another category"
        puts ""
        puts "Your score is #{user.score}"
        puts ""
        respA = prompt.select("Would you like to continue with this topic in not we will add your
score to the leaderboard and return you to the Main Menu",
             %w(Yes No))
             if respA == "Yes"
                 puts`clear`
                 music(user)
            else
                puts`clear`
                category_selection(user)
            end
    else
       pid = fork{ exec 'afplay', "./music/wrong.mp3"}
        puts "Sorry wrong answer the correct answer is #{question_selected.answer} Loser"
        puts ""
        puts "Your score is #{user.score}"
        puts ""
        respA = prompt.select("Would you like to continue with this topic in not we will add your
score to the leaderboard and return you to the Main Menu",
             %w(Yes No))
             if respA == "Yes"
                 puts`clear`
                 art(user)
            else
                puts`clear`
                category_selection(user)
            end
    end
end
