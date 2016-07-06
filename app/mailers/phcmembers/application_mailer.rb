module Phcmembers
	class ApplicationMailer < ActionMailer::Base
		default from: 'info@phcnetworks.net'
		layout 'mailer'
	end
end
