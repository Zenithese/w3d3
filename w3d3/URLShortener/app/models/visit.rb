# == Schema Information
#
# Table name: visits
#
#  id               :bigint           not null, primary key
#  number_of_visits :integer
#  user_id          :integer          not null
#  shortened_url_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Visit < ApplicationRecord

  belongs_to :users 
    primary_key: :id,
    # foreign_key: :user_id,
    class_name: :User

  



  def self.record_visit!(user, shortened_url)
  end
end
