json.array!(@trust_me_nots) do |trust_me_not|
  json.extract! trust_me_not, :id, :title, :notes, :due, :done
  json.url trust_me_not_url(trust_me_not, format: :json)
end
