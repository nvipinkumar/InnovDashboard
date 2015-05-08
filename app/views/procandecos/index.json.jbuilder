json.array!(@procandecos) do |procandeco|
  json.extract! procandeco, :id, :Name, :Summary, :Description, :Owner, :Reviewed, :Status_id, :Comments, :Action, :ImpOwner_id
  json.url procandeco_url(procandeco, format: :json)
end
