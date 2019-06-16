class BusinessesController < ApplicationController
	def index
		@tomb = []
		Tomb.all.each do |tomb|
			if tomb.customers.length != 0
				@tomb << tomb
			end
		end
	end
end
