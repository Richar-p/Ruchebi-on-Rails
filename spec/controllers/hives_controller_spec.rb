# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HivesController, type: :controller do
  describe 'GET #index' do
    subject { get :index }

    it { is_expected.to have_http_status(:success) }
  end

  describe 'GET #show' do
    subject { get :show, params: { id: create(:hive).id } }

    it { is_expected.to have_http_status(:success) }
  end

  describe 'POST #create' do
    subject { post :create, params: { hive: build(:hive).attributes } }

    it { is_expected.to have_http_status(:success) }
  end
end
