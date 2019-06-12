# newsletter.rb
# Generates this week's newsletter
# Use:
# $ ruby newsletter.rb
# 

require_relative 'data.rb'
## TODO: FIX
# require_relative 'formatter.rb'

def run
    puts "Generating this week's newsletter..."
    puts ""
    puts "Recipients: "
    print_recipients
    puts "Subject: "
    print_subject
    puts "Body:"
    print_newsletter
end

def print_recipients
    puts "TODO: recipients"
end

def print_subject
    # TODO: fix formatter, uncomment
    # puts "Flatiron #{format_campus_location} Newsletter: #{format_week}"
end

def print_newsletter
    # puts "Flatiron #{format_campus_location} Newsletter: #{format_week}"
    # TODO: print articles
end

run