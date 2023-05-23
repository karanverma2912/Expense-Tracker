module DeleteExpense
  def delete
    if $arr.empty?
      puts "\tNo Entries...\n\n"
    else
      puts "-Delete Expenses-"
      len = $arr.length
      puts "\n"
      for i in 0...len do
        print "\t#{i+1} Amount: $#{$arr[i].amount}, Date: #{$arr[i].date}, Category: #{$arr[i].category}\n"
      end
      puts "\n"
      puts "Which record you want to delete"
      num = gets.chomp.to_i
      num -= 1
      $arr.delete_at(num)
      puts "\nThe Expenses Deleted Successfully! \n\n"
    end
  end
end
