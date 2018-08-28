def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  if num.empty? || num.to_f < 0
    false
  else
    true
  end
end

loop do
  puts "Welcome to the loan calculator!"
  prompt('-----------------------------')

  principal = ''
  loop do
    prompt("What is the current total amount of your loans?")
    principal = gets.chomp

    if valid_number?(principal)
      break
    else
      prompt("Must enter a positive number.")
    end
  end

  # get APR and transform it to MPR

  prompt("What is the annual interest Rate on the loan?")
  prompt("example: 5 or 2.5 or 3.7")
  apr = ''

  loop do
    apr = gets.chomp
    if valid_number?(apr)
      break
    else
      prompt("Please enter a positive number")
    end
  end

  prompt("What is the duration of your loan in years? ")

  loan_duration_years = ''
  loop do
    loan_duration_years = gets.chomp

    if valid_number?(loan_duration_years)
      break
    else
      prompt("Enter a positive number")
    end
  end

  mpr = (apr.to_f / 100) / 12
  loan_duration = loan_duration_years.to_f * 12

  monthly_payment = principal.to_i * (mpr / (1 - (1 + mpr)**-loan_duration))
  prompt("your monthly payment is: #{monthly_payment}")

  prompt("Would you like to calculate another loan payment? (y or n)")
  repeat = gets.chomp.downcase
  if repeat == 'y'
  else
    break
  end
end

prompt("We hope this helps you get your financial-ass in shape!")
prompt("BYE!!!!!!!!!!!!")
