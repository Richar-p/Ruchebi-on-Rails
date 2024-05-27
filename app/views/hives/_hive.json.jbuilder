# frozen_string_literal: true

json.id          hive.id
json.name        hive.name
json.description hive.description
json.weight      "#{hive.weight} kg"
json.created_at  nice_datetime(hive.created_at)
json.updated_at  nice_datetime(hive.updated_at)
