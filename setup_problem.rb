#!/usr/bin/ruby

# This script downloads a problem statement from projecteuler.net, sets
# up a new folder for the problem, and creates a main.rb file containing the 
# problem statement as a comment.
#
# I wrote this because I was tired of doing the process manually, and wanted to 
# play with scraping web pages anyway.

require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pathname'


# Represent a problem from Project Euler
class ProjectEulerProblem
  def initialize(problem_number)
    @problem_number = problem_number
  end

  # Download the problem webpage and parse out the problem statement
  def statement
    uri = "https://projecteuler.net/problem=" + @problem_number
    page = Nokogiri::HTML(open(uri))   
    element = page.css('div.problem_content')
    
    statement = ""
     
    element.children.each do |child|
      if child.instance_of?(Nokogiri::XML::Element)
        # Use double-spacing to represent paragraphs
        statement += child.text.strip + "\n\n"
      end
    end
    
    return statement.strip
  end
end


# Utility to wrap text that exeeds a max line length while keeping words intact.
# Also has an option to include a prefix on every post-wrap line.
class TextWrapper
  def initialize(wrap, prefix="")
    @prefix = prefix
    @wrap = wrap
  end

  def wrap(text)
    input_lines = text.split("\n")
    output_lines = []
    
    input_lines.each do |input_line|
      words = input_line.split
      
      loop do
        output_line = @prefix
        until words.empty? || output_line.length + words[0].length > @wrap
          output_line += words.shift + " "
        end
        output_lines.push( output_line.strip )
        break if words.empty?
      end
    end
 
    return output_lines.join("\n")
  end
end




problem_number = ARGV[0]

problem = ProjectEulerProblem.new(problem_number)

solution_dir = Pathname.new(problem_number)
solution_dir.mkdir

File.open(solution_dir + "solution.rb", "w") do |script|
  script.puts "#!/usr/bin/ruby"
  script.puts ""
  script.puts "# Solution to Project Euler problem " + problem_number
  script.puts "# By Trey Thomas"
  script.puts "#"
  script.puts TextWrapper.new(80, "# | ").wrap(problem.statement)
  script.puts "#"
  script.puts "#"
  script.puts ""
  script.puts ""
  
  script.close
end

