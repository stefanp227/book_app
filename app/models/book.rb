class Book < ActiveRecord::Base
  has_attached_file :cover, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment :cover, presence: true, content_type: { content_type: ["image/jpeg", "image/png"] }, size: { in: 0..10.megabytes }
  
  enum genre: [ :comedy, :horror, :drama, :mystery, :biography ]

  before_save { self.page_count = page_count.to_i }

  validates :name, presence: true
  validates :genre, presence: true
  validates :page_count, presence: true
end
