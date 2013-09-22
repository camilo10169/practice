json.array!(@table2s) do |table2|
  json.extract! table2, :name, :code
  json.url table2_url(table2, format: :json)
end
