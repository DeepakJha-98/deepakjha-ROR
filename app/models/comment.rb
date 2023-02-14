class Comment < ApplicationRecord
  belongs_to :article
  has_many :likes, as: :likeable
  
  # VALID_STATUSES = ['public','private','archived']
  #  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end
