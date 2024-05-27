# frozen_string_literal: true

# Helpers for all applications
module ApplicationHelper
  def nice_datetime(datetime)
    return '' if datetime.blank?

    unless datetime.is_a?(DateTime) || datetime.is_a?(ActiveSupport::TimeWithZone)
      raise ArgumentError, 'not a DateTime provided'
    end

    datetime.strftime('%F - %R')
  end
end
