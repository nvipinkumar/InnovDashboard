json.array!(@knowandculs) do |knowandcul|
  json.extract! knowandcul, :id, :Name, :Summary, :Description, :Owner, :Reviewed, :Status_id, :Comments, :Action, :ImpOwner_id
  json.url knowandcul_url(knowandcul, format: :json)
end
