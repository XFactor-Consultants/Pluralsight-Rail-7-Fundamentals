class WikiPost < ApplicationRecord

  scope :contributors, -> { pluck(:author).uniq }
  
end
