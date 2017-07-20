json.array!(@bookings) do |booking|
  json.extract! booking, :id, :LoginName, :DoctorName, :AvailableDate, :Timings, :Patient_id, :Doctor_id
  json.url booking_url(booking, format: :json)
end
