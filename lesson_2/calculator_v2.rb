require 'yaml'

puts "Please select your language. English or Spanish"
language = ''
config = ''
loop do
  language = gets.chomp.downcase
  if language == 'english'
    config = YAML::load_file('calculator_v2.conf')
    break
  elsif language == 'spanish'
    config = YAML::load_file('calculator_v2_spanish.conf')
    break
  else
  end
end


def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  if num == '0'
      return true
  elsif
    num.to_i() != 0
      return true
  end
end

def number?(num)
  return true if num.is_a?(Float) || num.is_a?(Integer)
end

def operation_to_message(op)
  answer = case op
           when '1'
             'Adding'
           when '2'
             'Subtracting'
           when '3'
             'multiplying'
           when '4'
             'dividing'
           end

  answer
end

puts config[:welcome]

name = ''
loop do
  name = gets.chomp

  if name.empty?()
    puts config[:name_error]
  else
    break
  end
end

puts config[:username] + "#{name}!"

loop do # main loop
  number1 = ''
  loop do
    puts config[:first]
    number1 = Kernel.gets().chomp()
    puts number1
    if valid_number?(number1)
      break
    else
      puts config[:number_error]
    end

    if number?(number1)
      break
    else
      puts config[:number_error]
    end
  end

  number2 = ''
  loop do
    puts config[:second]
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      puts config[:number_error]
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      puts config[operator_error]
    end
  end
  prompt("#{operation_to_message(operator) } the two numbers...")

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  puts config[:answer] + "#{result}"
  puts config[:restart]
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end
