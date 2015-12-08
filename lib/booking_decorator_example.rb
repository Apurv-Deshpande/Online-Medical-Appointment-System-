# the concret component we would like to decorate, a car in our example
class BasicBooking
	def initialize(cost)
		@cost = cost
		@description = "general"
	end
	
	# getter method
	def cost
		return @cost
	end
	
	def details
		return @description + ": #{@cost}; " 
	end	
end

# decorator class -- this serves as the superclass for all the concrete decorators
# the base/super class decorator (i.e. no actual decoration yet), each concrete decorator (i.e. subclass) will add its own decoration
class FirstSittingDecorator <  BasicBooking
	def initialize(basic_booking)
		super(:basic_booking)
		@description = "First Sitting"
		@cost = 150
	end
	def cost
	    @cost
	end
	
end


# a concrete decorator
class FollowUpDecorator <  Booking
	def initialize(basic_booking)
		super(@basic_booking)
		@description = "Follow Up"
		@cost = 100
	end
	def cost
	    @cost
	end
end

# another concrete decorator
class RoutineCheckUpDecorator <  Booking
	def initialize(basic_booking)
		super(@basic_booking)
		@description = "Follow Up"
		@cost = 100
	end
	def cost
	    @cost
	end
end

