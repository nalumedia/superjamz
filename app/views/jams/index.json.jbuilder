json.array!(@jams) do |jam|
  json.extract! jam, :id, :jam_name, :jam_description, :jam_url, :jam_embed, :jamkey_id, :jamgenre_id, :user_id
  json.url jam_url(jam, format: :json)
end
