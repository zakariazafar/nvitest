class VisitorLocationService
	def record_visitor_ip
		Visitor.create(ip: remote_ip)
	end

	def remote_ip
	    if Rails.env.production?
		  request.remote_ip
		else
		  "127.0.0.1"
		end
    end
end