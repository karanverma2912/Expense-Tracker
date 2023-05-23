module EditExpense
  def edit
    if $arr.empty?
      puts "\tNo Entries...\n\n"
    else
      puts "-Edit Expenses-"
          len = $arr.length
          puts "\n"
          for i in 0...len do
              print "\t#{i+1} Amount: $#{$arr[i].amount}, Date: #{$arr[i].date}, Category: #{$arr[i].category}\n"
            end
            puts "\n"
            puts "Which record you want to edit"
            num = gets.chomp.to_i
            num -= 1
            print "Enter the amount spent "
            amount = gets.chomp.to_f
            print "\nEnter the category "
            category = gets.chomp.to_s
            category = category.upcase
            print "\nEnter the date (YYYY-MM-DD) "
            date= gets.chomp.to_s
            $arr[num].amount = amount
            $arr[num].date = date
            $arr[num].category = category
            puts "\nThe Expenses Edited Successfully! \n\n"
      end
  end
end
