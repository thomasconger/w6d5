# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord

  validates :name, :birth_date, presence: true

  validates :sex, presence: true, inclusion: { in: ["M", "F", "m", "f"]}

  validates :color, presence: true, inclusion: { in: ["black", "orange", "brown", "grey", "white"]}

  validate :birth_date_cannot_be_future

  def birth_date_cannot_be_future
    raise 'Birth date cannot be future' if self.birth_date > Date.today
  end

  #validates :sphare, inclusion: { in: ["Good", "Bad", "Neutral"] }




end
