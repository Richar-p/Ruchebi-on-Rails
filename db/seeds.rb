# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Rails.logger.debug 'Seeds Started...'

Rails.logger.debug 'Creating Hives.'

1.upto(1000) do
  hive = Hive.create!(
    name: Faker::Internet.username(specifier: 1..6),
    description: Faker::Lorem.paragraph(sentence_count: 2),
    weight: Faker::Number.decimal(l_digits: [1, 2].sample)
  )

  Rails.logger.debug "Hive #{hive.name} created!"
end

Rails.logger.debug 'Hives created!'

Rails.logger.debug 'Seeds done!'
