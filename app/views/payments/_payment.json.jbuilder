json.extract! payment, :id, :pay_freq, :customer_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
