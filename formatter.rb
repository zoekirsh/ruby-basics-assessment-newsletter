# formatter.rb
# formatting helper methods for printing the newsletter

require 'date'

def format_campus_location(campus)
    "#{campus["name"]} #{campus["location"]}"
end

def format_week
    today = DateTime.now
    today.strftime "%b %d, %Y"
    end
end

def format_article(article)
   # TODO 
end

def format_footer(campus)
    "Work hard, be nice, and have an epic week! //\n" +
    "Flatiron School · #{campus["name"]} · #{campus["address"]} "
end