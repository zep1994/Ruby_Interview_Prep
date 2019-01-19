class Ruby

    def call
        start
    end

    def list 
        puts "Here are some questions:"
        puts ""
        puts "---------------------------------------------------------------------------"
        Questions.each.with_index(1) do |question, i|
            puts "#{i}. #{question}"
        end
        puts "---------------------------------------------------------------------------"

        puts ""
        puts ""
    end

    def ans 
        arr = []
        Answers.each.with_index(1) do |answer|
             arr << answer
        end
    end

    def print_answer(input)
        j = ans.find(input)
        j.to_s
        puts j
    end


    def start 
        puts "Welcome to Ruby interview where you can get quesitoned for a ruby interview"
        puts "---------------------------------------------------------------------------"
        puts ""
        list
        input = nil
        while input != "exit"
            puts ""
            puts "So now what question would you like to see the answer for?"
            puts ""
            puts "Enter list to see the list again."
            puts "Enter exit to quit the application."
            puts ""
            input = gets.strip
            if input == "list"
                list 
            elsif input.to_i > 0 && input.to_i <= Answers.length
                print_answer(input)
            elsif 
                puts "I do not comprehend."
            end
        end
        puts ""
        puts ""
        puts "Goodbye!!!"
    end

end