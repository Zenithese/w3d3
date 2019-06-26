# == Schema Information
#
# Table name: shortened_urls
#
#  id        :bigint           not null, primary key
#  long_url  :string           not null
#  short_url :string           not null
#  user_id   :integer          not null
#

class Shortened_URL < ApplicationRecord
  validates :short_url, presence: true, uniqueness:true
  validates :long_url, presence: true, uniqueness:true

  belongs_to :users 
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User


  def self.random_code
    loop do
      rando = SecureRandom.urlsafe_base64(16)
      return rando unless Shortened_URL.find_by(:short_url => rando)
    end
  end


end
