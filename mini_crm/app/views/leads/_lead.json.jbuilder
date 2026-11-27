json.extract! lead, :id, :name, :company, :email, :phone, :status, :created_at, :updated_at
json.url lead_url(lead, format: :json)
