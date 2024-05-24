# frozen_string_literal: true

# Primary Abstract Class for mailer.
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
