# frozen_string_literal: true

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
FactoryBot.define do
  factory :hive do
    name        { Faker::Internet.username(specifier: 1..6)      }
    description { Faker::Lorem.paragraph(sentence_count: 2)      }
    weight      { Faker::Number.decimal(l_digits: [1, 2].sample) }
  end
end
