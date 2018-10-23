def question_selection(user)
    puts "Please select the difficulty"
    puts "Please pick difficulty"
    puts "   _____________________________________________________
\ |  1    Easy                                            |
\ |  2    Medium                                          |
\ |  3    Hard                                            |
\ |  4    See High Scores                                 |
\ |  5    Sign-Out                                        |
\  ______________________________________________________  "
    question_response = gets.chomp

    case question_response.to_i
    when 1
        #segue to easy #question
        easy(user)
    when 2
        #segue to medium
        medium(user)
    when 3
        #segue to hard
        hard(user)
    else
        "Please enter the correct number from above"
        question_selection(user)
    end

end
