
#input: a string
#output: true of false

def balanced?(string)
  if string.include?('(') || string.include?(')')

    if string.count('(') == string.count(')')
      paren_counter = 0
      string.each_char do |chr|
        if chr == '('
          paren_counter += 1
        elsif chr == ')'
          paren_counter -= 1
        end
        return false if paren_counter < 0
      end
      true
    else
      false
    end
  else
    true
  end
end

p balanced?('What (is) this?')# == true
p balanced?('What is) this?')# == false
p balanced?('What (is this?')# == false
p balanced?('((What) (is this))?')# == true
p balanced?('((What)) (is this))?')# == false
p balanced?('Hey!')# == true
p balanced?(')Hey!(')# == false
p balanced?('What ((is))) up(')# == false
