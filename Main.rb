require_relative "AddExpense"
require_relative "ViewExpense"
require_relative "DeleteExpense"
require_relative "EditExpense"
require_relative "FilterExpense"
require_relative "AnalyzeExpense"
$arr = []
class Input
  attr_accessor :date, :amount, :category
  def initialize(amount,date,category)
    @amount = amount
    @date = date
    @category = category
  end
end
class Main
include AddExpense
include ViewExpense
include DeleteExpense
include EditExpense
include AnalyzeExpense
include FilterExpense
end
main = Main.new
loop do
  puts "Please Enter Your Choice :- \n1. Add Expenses \n2. View Expenses \n3. Filter Expenses \n4. Edit Expenses \n5. Delete Expenses \n6. Analyze Your Expenses \n7. Exit"
  choice = gets.chomp.to_i
  puts

  case choice
      when 1
        main.add
      when 2
        main.view
      when 3
        main.filter
      when 4
        main.edit
      when 5
        main.delete
      when 6
        main.analyze
      when 7
        puts "Exiting...."
        break
      else
        puts "Invalid Choice\n"
  end
end
