module Phcmembers
  class ApplicationMailer < ActionMailer::Base
    default from: ENV['PHC_MEMBERS_PRO_EMAIL_ADDRESS']
    layout 'mailer'
  end
end
