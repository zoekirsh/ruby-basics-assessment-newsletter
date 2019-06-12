# newsletter.rb
# Generates this week's newsletter
# Use:
# $ ruby newsletter.rb
# 

## TODO: FIX
# require_relative 'formatter.rb'
require_relative 'data.rb'

def run
    puts "Generating this week's newsletter..."
    puts ""
    puts "Recipients:"
    print_recipients
    puts "Subject:"
    print_subject
    puts "Body:"
    print_newsletter
end

def print_recipients
end

def print_subject
end

def print_newsletter
end

run