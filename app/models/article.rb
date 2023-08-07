class Article < ApplicationRecord
    self.record_timestamps = false
    validates :title, presence: true, length: { maximum: 40 }
    validates :content, presence: true
    validates :author, presence: true
    validates :published_at, presence: true
end
