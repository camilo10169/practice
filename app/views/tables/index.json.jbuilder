json.array!(@tables) do |table|
  json.extract! table, :name, :code
  json.url table_url(table, format: :json)
end
