
class Customer < ApplicationRecord
  # Attach one image to each customer
  has_one_attached :image

  # Validations
  validates :full_name, presence: true
  validates :phone_number, presence: true

  # Allow ActiveAdmin to search customer fields
  def self.ransackable_attributes(auth_object = nil)
    %w[
      id
      full_name
      phone_number
      email_address
      province
      created_at
      updated_at
    ]
  end

  # Allow ActiveAdmin to access image attachments
  def self.ransackable_associations(auth_object = nil)
    %w[
      image_attachment
      image_blob
    ]
  end
end
