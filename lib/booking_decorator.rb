require_relative 'booking_decorator_example'

# create a basic car instance/object

@booking = BasicBooking.new(30)
puts @booking.cost


# add extra features to the car
@booking = FirstSittingDecorator.new(@booking)
puts @booking.cost


@booking= FollowUpDecorator.new(@booking)
puts @booking.cost


@booking= RoutineCheckUpDecorator.new(@booking)
puts @booking.cost



