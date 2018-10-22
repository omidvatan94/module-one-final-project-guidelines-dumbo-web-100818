def question_selection
    puts "Please select the difficulty"
    puts "Please pick difficulty"
    puts "   _____________________________________________________
\ |  1    Easy                                            |
\ |  2    Medium                                          |
\ |  3    Hard                                            |
\  ______________________________________________________  "
    question_response = gets.chomp
    case question_response.to_i
    when 1
        #segue to easy #question
        easy
    when 2
        #segue to medium
        medium
    when 3
        #segue to hard
        hard
    end
end
