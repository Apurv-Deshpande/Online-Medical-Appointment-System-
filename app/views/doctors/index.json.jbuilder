json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :DoctorName, :Specialization, :HospitalName, :ADate
  json.url doctor_url(doctor, format: :json)
end
