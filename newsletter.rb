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

def still_subscribed
    SUBSCRIBERS.filter { |email| !UNSUBSCRIBED.include?(email) }
end

def print_recipients
    puts still_subscribed.join(", ")
end

def print_subject
    puts format_header
end

def print_articles
    ARTICLES.each do |article|
        puts format_article(article)
    end
end

def print_newsletter
    puts format_header
    puts "\n"
    print_articles
    puts format_footer(CAMPUS)
end

run