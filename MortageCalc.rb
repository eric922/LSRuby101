=begin
Input: number(loan amount), number(APR), number(loan duration)
Output: number( monthy interst) number(loan duration) number(monthly payment)
Step:
1. Define a function that asks for the three pieces of information we need.
2. Convert the yearly loan to a monthly base.
3. Convert the APR to a monthly interest rate

=end
def mortage_calc
  puts "Welcome to the mortage Calcuator"
  puts "Please enter your loan amount"
  loan_amount = gets.chomp.to_i
  puts "Please enter your loan duration in years"
  loan_months = gets.chomp.to_i * 12
  puts "Please enter the APR for your loan"
  loan_apr = gets.chomp.to_f / 100
  monthly_interest_rate = loan_apr / 12
  

  monthly_payment = loan_amount * (monthly_interest_rate /(1 - (1 + monthly_interest_rate) **(-loan_months)))
  puts "Your monthy payment is $" + "#{monthly_payment.round(2)}"
end 

mortage_calc


