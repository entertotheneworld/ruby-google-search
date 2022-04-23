require 'launchy'


def google_searcher
    research = ARGV

    if research.length == 0 
        puts "ERROR, no ARGV in"
        puts "If you want to search on google: 'how to center a div', execute the following line:"
        puts " > ruby google_searcher.rb how to center a div"
    else 
        url =  "https://www.google.com/search?q="
        research.each_with_index {|word, i|
            url += word + "+" if i < research.length - 1
            url += word if i == research.length - 1
        }
        Launchy.open(url)
    end
end

google_searcher






