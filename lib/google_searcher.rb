
require 'launchy'   # Appele de la gem launchy

def check_if_user_gave_input
  abort("mkdir: missing input, try :\n > ruby google_searcher.rb how to center a div") if ARGV.empty?
end

def create_url(argv)
  url =  "https://www.google.com/search?q="
  argv.each_with_index {|word, i|
    url += word + "+" if i < argv.length - 1
    url += word if i == argv.length - 1
  }
  return url
end

def perform
  check_if_user_gave_input
  Launchy.open(create_url(ARGV))
end

perform