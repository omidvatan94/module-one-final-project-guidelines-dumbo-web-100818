def introduction
    puts "Hello an welcome to our matching game"
    puts "Please enter a username"
    puts "=========================================="
    user_response = gets.chomp
    User.create(user_response)
    question_selection
end
