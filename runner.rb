require_relative './google_books'

def get_user_input
  puts "Please enter a search term or enter q to quit:"
  query = gets.chomp
end


def fetch_books(query)
  # Make a request to the Google Books API
  url = "https://www.googleapis.com/books/v1/volumes?q=#{query}"
  response = open(url).read
  # Take the response, convert it from a string into a hash
  data = JSON.parse(response)
end

def run
  query = get_user_input
  while query != "quit"
    data = fetch_books(query)
    books = data["items"]
    display_books(books)
    puts "Please enter another search term:"
    query = gets.chomp
  end
end

run
