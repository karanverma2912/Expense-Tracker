module AnalyzeExpense
  def analyze
    puts "Analize Your Expenses\n\n"

    totalExpense = 0
    categoryExpense = 0
    $arr.each do |i|
      totalExpense += i.amount
    end
    $arr.each do |i|
      if i.category == 'FOOD'
        categoryExpense += i.amount
      end
    end
    chart = categoryExpense/totalExpense*30
    print ":"
    for i in 1..chart.to_i do
        print "|"
    end
    print"  Food = #{categoryExpense}\n\n"


    categoryExpense = 0
    chart = 0
    $arr.each do |i|
      if i.category == 'ENTERTAINMENT'
        categoryExpense += i.amount
      end
    end
    chart = categoryExpense/totalExpense*30
    print ":"
    for i in 1..chart.to_i do
        print "|"
    end
    print"  Entertainment = #{categoryExpense}\n\n"


    categoryExpense = 0
    chart = 0
    $arr.each do |i|
      if i.category == 'TRANSPORTATION'
        categoryExpense += i.amount
      end
    end
    chart = categoryExpense/totalExpense*30
    print ":"
    for i in 1..chart.to_i do
        print "|"
    end
    print"  Transportation = #{categoryExpense}\n\n"
    puts "Total Expenses: #{totalExpense}\n\n"

  end
end
