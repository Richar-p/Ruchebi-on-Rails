# == Schema Information
#
# Table name: hives
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string           not null
#  weight      :float            not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Hive < ApplicationRecord

  validates :name, presence: true
  validates :name, length: { maximum: 6 }

  validates :weight, presence: true

end
