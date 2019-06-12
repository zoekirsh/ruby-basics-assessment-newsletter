# newsletter.rb
# Generates this week's newsletter
# Use:
# $ ruby newsletter.rb
# Output:
# Generating this week's newsletter...
# etc.
# See sample_output.txt for sample output

require_relative 'data.rb'
require_relative 'formatter.rb'

def run
    puts "Generating this week's newsletter..."
    puts ""
    print "Recipients: "
    print_recipients
    print "Subject: "
    print_subject
    puts "Body:"
    print_newsletter
end

def print_recipients
    still_subscribed = SUBSCRIBERS - UNSUBSCRIBED
    puts still_subscribed.join(", ")
end

def print_subject
    puts "Flatiron #{format_campus_location(CAMPUS)} Newsletter - #{format_week}"
end

def print_newsletter
    puts "Flatiron #{format_campus_location(CAMPUS)} Newsletter - #{format_week}"
    puts "\n"
    ARTICLES.each do |article|
        puts format_article(article)
    end
    puts format_footer(CAMPUS)
end

run