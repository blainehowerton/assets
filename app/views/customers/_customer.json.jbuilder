json.extract! customer, :id, :name, :address1, :address2, :city, :state, :zip, :email, :office_phone, :cell_phone, :fax_phone, :memo, :created_at, :updated_at
json.url customer_url(customer, format: :json)