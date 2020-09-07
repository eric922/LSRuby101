def obtain_loan_amount
loan_amount = 0
loop do
  puts "Please enter your loan amount"
loan_amount = gets.chomp.to_i
if loan_amount > 0
break
else
  puts "Please enter new input. Loan amount must be a number greater than 0."
end
end
return loan_amount
end

def obtain_loan_duration
loan_months = 0
loop do
  puts "Please enter your loan duration in years"
loan_months = gets.chomp.to_i * 12
if loan_months > 0
break
else
  puts "Please enter new input. Loan duration must be a number greater than 0."
end
end
return loan_months
end

def obtain_loan_apr
loan_apr = 0
loop do
  puts "Please enter the APR for your loan"
loan_apr = gets.chomp.to_f / 100
if loan_apr > 0
break
else
  puts "Please enter new input. APR must be a number greater than 0."
end
end
monthly_rate = loan_apr / 12
return monthly_rate
end

def find_monthly_payment(loan_amount, monthly_interest_rate, loan_months)
monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate) ** (-loan_months)))
puts "Your monthly payment is $" + "#{monthly_payment.round(2)}"
end

def perform_calculations
amount = obtain_loan_amount
duration = obtain_loan_duration
interest_rate = obtain_loan_apr
find_monthly_payment(amount, interest_rate, duration)

puts "Would you like to run the program again? Enter 'Y' or 'y' for 'yes.'"
run_again = gets.chomp
if run_again == 'Y' || run_again == 'y'
perform_calculations
else
  puts "Goodbye"
end
end
perform_calculations
