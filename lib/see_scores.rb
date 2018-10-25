def all_scores(user)
    prompt = TTY::Prompt.new
resp = prompt.select("Please select the category",["U.S Governors", "Music",
    "Art", "Return to Category Selection"])

case resp
when "U.S Governors"
    puts ""
    #segue to easy #question
    gov_score(user)
when "Music"
    #segue to medium
    puts ""
    music_score(user)
when "Art"
    #segue to hard
    puts ""
    art_score(user)
when "Return to Category Selection"
    puts `clear`
    category_selection(user)
end

end

def gov_score(user)
    x = Score.where(category_id: 1)
    y = x.order(:score).last(4).reverse
    y.each do |inst|
         puts "#{inst.user.username} #{inst.score}"
     end
     puts ""
     prompt = TTY::Prompt.new
     resp = prompt.select("Would you like to return to the High Score Menu or the Main Menu",["High Score Menu",
     "Main Menu"])
     puts `clear`
     case resp
     when "High Score Menu"
         #segue to easy #question
         all_scores(user)
     when "Main Menu"
         #segue to medium
         category_selection(user)
     end
end

def music_score(user)
    x = Score.where(category_id: 2)
    y = x.order(:score).last(4).reverse
    y.each do |inst|
         puts "#{inst.user.username} #{inst.score}"
     end
     puts ""
     prompt = TTY::Prompt.new
     resp = prompt.select("Would you like to return to the High Score Menu or the Main Menu",["High Score Menu",
     "Main Menu"])
     puts `clear`
     case resp
     when "High Score Menu"
         #segue to easy #question
         all_scores(user)
     when "Main Menu"
         #segue to medium
         category_selection(user)
     end
 end

 def art_score(user)
     x = Score.where(category_id: 3)
     y = x.order(:score).last(4).reverse
     y.each do |inst|
          puts "#{inst.user.username} #{inst.score}"
      end
      puts ""
      prompt = TTY::Prompt.new
      resp = prompt.select("Would you like to return to the High Score Menu or the Main Menu",["High Score Menu",
      "Main Menu"])
      puts `clear`
      case resp
      when "High Score Menu"
          #segue to easy #question
          all_scores(user)
      when "Main Menu"
          #segue to medium
          category_selection(user)
      end
  end
