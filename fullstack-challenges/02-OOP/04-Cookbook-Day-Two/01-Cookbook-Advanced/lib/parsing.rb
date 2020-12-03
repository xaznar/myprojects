require 'nokogiri'
file = 'strawberry.html'  # or 'strawberry.html'
doc = Nokogiri::HTML(File.open(file), nil, 'utf-8')

# Up to you to find the relevant CSS query.

ingredient = 'strawberry'
url = "https://www.marmiton.org/#{ingredient}"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.teaser-item__title a').each do |element|
  puts element.text.strip
  puts element.attribute('href').value
end
