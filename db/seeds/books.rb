# execute this seed by the following command
# rake db:seed:books

(1..50).each do |n|
  Book.create(
  	title: "book title #{n}",
  	description: "book description #{n}",
  	author: "book author #{n}",
  	publisher: "book publisher #{n}",
  	published_on: Time.now.strftime("Published on %m/%d/%Y"),
  	unit_price: n.to_f
  )
end                   
