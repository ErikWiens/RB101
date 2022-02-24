# https://launchschool.com/exercises/29ffd590
# Erik Wiens

# Problem
# Write a method that will take a short line of text, and print it within a box.

# def print_in_box(text)
#   puts "+-" + "-" * text.length + "-+"
#   puts "| " + " " * text.length + " |"
#   puts "| " + text + " |"
#   puts "| " + " " * text.length + " |"
#   puts "+-" + "-" * text.length + "-+"
# end

# Further Exploration
# Modify this method so it will truncate the message if it will be too wide to
# fit inside a standard terminal window (80 columns, including the sides of the
# box). For a real challenge, try word wrapping very long messages so they
# appear on multiple lines, but still within a box.

# split text into array of words
# for each line add words until reach 80 character limit, then move to next line

MAX_LINE_LENGTH = 80

def print_in_box(text)
  horizontal_rule = "+-#{"-" * (80-4)}-+"
  empty_line = "|#{" " * (80-2)}|"
  
  words = text.split(' ')
  lines = Array.new
  i = 0
  loop do
    lines << ""
    loop do
      break if words.empty? || (lines[i].length + words[0].length >= (MAX_LINE_LENGTH - 6))    
      lines[i] << " " + words.shift
    end
    break if words.empty?
    i += 1
  end

  lines.map! { |line| line.strip }

  puts horizontal_rule
  puts empty_line
  lines.each { |line| puts "| #{line}#{" " * (80 - 4 - line.length)} |" }
  puts empty_line
  puts horizontal_rule
end


# Examples / Tests
print_in_box('To boldly go where no one has gone before.')
print_in_box("Programmers use programming languages to create programs or applications. Depending on the type of application they're trying to build, a specific type of programming language may be preferred over another. Programming languages, like natural languages, are grouped into various categories or families. Ruby and Python, for example, are like French and Spanish; very similar in nature, but with a different syntax and vocabulary. Some programming languages are esoteric and rarely used, or used in a specific niche like Aramaic. Older programming languages may have inspired new languages. Today, however, they are only used academically, much as how Latin is no longer used in conversation but still studied by linguists. Note that this analogy between natural and programming languages, though useful, is not perfect. For one, programming languages, for the most part, are much more similar to each other than natural languages. That similarity is the reason why learning a second programming language is much easier than learning the first.")