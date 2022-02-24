# https://launchschool.com/exercises/6eb02aae
# Erik Wiens

# Problem
# Modify the method from the previous exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each
# letter. The non-alphabetic characters should still be included in the return
# value; they just don't count when toggling the desired case.

def staggered_case(string, toggle_on_non_alpha_chars = false)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper && char =~ /[a-zA-Z]/
      result += char.upcase
      need_upper = !need_upper
    elsif !need_upper && char =~ /[a-zA-Z]/
      result += char.downcase
      need_upper = !need_upper
    else
      if toggle_on_non_alpha_chars
        need_upper = !need_upper
      end
      result += char
    end
  end
  result
end

# Examples / Tests
puts staggered_case('I Love Launch School!', true)      #== 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS')                   #== 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers')  #== 'IgNoRe 77 ThE 444 nUmBeRs'