json.extract! profile, :id, :first_name, :last_name, :abn, :address, :state, :postcode, :mobile_number, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
