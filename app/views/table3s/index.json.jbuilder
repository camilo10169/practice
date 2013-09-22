json.array!(@table3s) do |table3|
  json.extract! table3, :name, :code
  json.url table3_url(table3, format: :json)
end
