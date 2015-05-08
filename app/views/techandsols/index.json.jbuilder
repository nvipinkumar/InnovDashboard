json.array!(@techandsols) do |techandsol|
  json.extract! techandsol, :id, :Name, :Summary, :Description, :Owner, :Reviewed, :Status_id, :Comments, :Action, :ImpOwner_id
  json.url techandsol_url(techandsol, format: :json)
end
