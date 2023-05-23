module ViewExpense
  def view
    if $arr.empty?
      puts "\tNo Entries...\n\n"
    else
      totalExpense = 0
      puts "-View Expenses-"
      puts "\n"
      $arr.each do |i|
        puts "\tAmount: $#{i.amount}, Date: #{i.date}, Category: #{i.category}"
        totalExpense = totalExpense + i.amount
      end
      puts "\nTotal Expenses: #{totalExpense}\n\n"
    end
  end
end
