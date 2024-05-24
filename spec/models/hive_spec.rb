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
require 'rails_helper'

RSpec.describe Hive, type: :model do
  subject { build(:hive) }

  it { is_expected.to validate_presence_of(:name)             }
  it { is_expected.to validate_length_of(:name).is_at_most(6) }
  it { is_expected.to validate_presence_of(:weight)           }
end
