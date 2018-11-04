class UrlShared < ApplicationRecord
  belongs_to :short_url
  belongs_to :user
end
