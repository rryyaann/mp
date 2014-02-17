json.array!(@cleanings) do |cleaning|
  json.extract! cleaning, :id, :date, :time
  json.url cleaning_url(cleaning, format: :json)
end
