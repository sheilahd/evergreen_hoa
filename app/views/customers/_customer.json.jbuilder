json.extract! customer, :id, :fam_name, :st_numb, :st_name, :created_at, :updated_at
json.url customer_url(customer, format: :json)
