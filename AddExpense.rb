module AddExpense
  def add
    puts "-Add Expenses-"
        print "Enter the amount spent "
        amount = gets.chomp.to_f
        print "\nEnter the category "
        category = gets.chomp.to_s
        category = category.upcase
        print "\nEnter the date (YYYY-MM-DD) "
        date= gets.chomp.to_s
        i = Input.new(amount,date,category)
        $arr.push(i)
        puts
        puts "-Expenses Added Successfully!!-\n\n"
  end
end
