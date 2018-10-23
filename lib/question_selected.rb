require '/Users/matthewdizon/Desktop/flatiron/Ruby/Week3/module-one-final-project-guidelines-dumbo-web-100818/app/models/politician.rb'
require '/Users/matthewdizon/Desktop/flatiron/Ruby/Week3/module-one-final-project-guidelines-dumbo-web-100818/app/models/user.rb'
def easy(user)
    #generate random id for the ids of easy
    random_question  = rand(1..9)
    selected_question = Question.find(random_question)
    #ask user for the politician party given politician name
    #work this bottom part out call the question
    #compare question answer with politic object name and their
    #respective party
    puts selected_question.question
    puts "Please type R or D"
    easy_input = gets.chomp
    #verify if correct
    if (easy_input.to_s == "R") || (easy_input.to_s == "D")
        politician_comparor = Politician.all.find_by(name: selected_question.politican_name)
        if easy_input == politician_comparor.party
    #add to score
            user.user_score  += 1
        else
            puts "Wrong answer Fuck YOU"
        end
    else
        puts "Please type R or D"
    end
    #return to question selection screen
    user.save
    question_selection(user)
end



def medium(user)
    #generate random id for the ids of easy
    random_question  = rand(10..18)
    selected_question = Question.find(random_question)
    #ask user for the politician party given politician name
    #work this bottom part out call the question
    #compare question answer with politic object name and their
    #respective party
    puts selected_question.question
    puts "Please type R or D"
    easy_input = gets.chomp
    #verify if correct
    if (easy_input.to_s == "R") || (easy_input.to_s == "D")
        politician_comparor = Politician.all.find_by(name: selected_question.politican_name)
        if easy_input == politician_comparor.party
    #add to score
            user.user_score  += 1
        else
            puts "Wrong answer Fuck YOU"
        end
    else
        puts "Please type R or D"
    end
    #return to question selection screen
    user.save
    question_selection(user)
end



def hard(user)
    #generate random id for the ids of easy
    random_question  = rand(19..25)
    selected_question = Question.find(random_question)
    #ask user for the politician party given politician name
    #work this bottom part out call the question
    #compare question answer with politic object name and their
    #respective party
    puts selected_question.question
    puts "Please type R or D"
    easy_input = gets.chomp
    #verify if correct
    if (easy_input.to_s == "R") || (easy_input.to_s == "D")
        politician_comparor = Politician.all.find_by(name: selected_question.politican_name)
        if easy_input == politician_comparor.party
    #add to score
            user.user_score  += 1
        else
            puts "Wrong answer Fuck YOU"
        end
    else
        puts "Please type R or D"
    end
    #return to question selection screen
    user.save
    question_selection(user)
end
