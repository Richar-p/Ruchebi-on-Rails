# frozen_string_literal: true

# Primary abstract class for controllers
class ApplicationController < ActionController::API
  # Force the app to be a JSON only
  before_action { request.format = :json }
end
