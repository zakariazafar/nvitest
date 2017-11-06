class VisitorLocationService
	def self.record_visitor_ip
		Visitor.create(ip: remote_ip)
	end
    def self.remote_ip
	 	request.remote_ip
    end
end