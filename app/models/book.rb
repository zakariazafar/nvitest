class Book < ApplicationRecord
  scope :all_books, ->() { all }
  scope :by_filter, -> (title) { where("title iLIKE ?", "%#{title}%")}
end
