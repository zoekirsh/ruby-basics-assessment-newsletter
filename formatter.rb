# formatter.rb
# formatting helper methods for printing the newsletter

require 'date'

def format_header
    "Flatiron #{format_campus_location(CAMPUS)} Newsletter - #{format_week}"
end

def format_campus_location(campus)
    campus[:name]
end

def format_week
    today = DateTime.now
    today.strftime "%b %d, %Y"
end

def format_article(article)
   "#{article[:title]}\n" +
   "by: #{article[:author]}\n" +
   "#{article[:text]}\n\n"
end

def format_footer(campus)
    "Work hard, be nice, and have an epic week! //\n" +
    "Flatiron School · #{campus[:name]} · #{campus[:address]} "
end