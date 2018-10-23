require_relative '../config/environment'

def introduction
  puts "                  ================================"
  puts "                  |       Create Account         |"
  puts "                  ================================"
  puts "Please enter username"
  intro_input = gets.chomp

  user = User.new
  user.username = intro_input.to_s
  user.user_score = 0
  user.save
  question_selection(user)
end

def verify
    puts "                  ================================"
    puts "                  |            Sign In           |"
    puts "                  ================================"
    puts "Please enter username"
    verify_user = gets.chomp
    find_user = User.all.find_by(username: verify_user)
    if find_user != nil
        question_selection(find_user)
    else
        puts "We do not have your account on file we are sending you
        \ to the homescreen please try again"
        verify

    end
end

def homescreen
    puts "          ========================================================"
    puts "          | Please select fromt the following                    |"
    puts "          | 1 Create Account                                     |"
    puts "          | 2 Sign In                                            |"
    puts "          ======================================================="
    homescreen_response = gets.chomp

    case homescreen_response.to_i
    when 1
        introduction
    when 2
        verify
    else
        puts "Please Enter a 1 or 2"
        homescreen
    end
end


homescreen
