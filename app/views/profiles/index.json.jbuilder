json.array!(@profiles) do |profile|
  json.extract! profile, :id, :FirstName, :LastName, :BirthDate, :City, :Country, :Pincode, :ContactNo, :Email, :user_id
  json.url profile_url(profile, format: :json)
end
