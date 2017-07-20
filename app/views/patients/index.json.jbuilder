json.array!(@patients) do |patient|
  json.extract! patient, :id, :Name, :Age, :Height, :Weight, :BloodGroup, :Sugar, :BloodPressure, :RegDate
  json.url patient_url(patient, format: :json)
end
