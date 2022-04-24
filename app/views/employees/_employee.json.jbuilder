json.extract! employee, :id, :name, :tel, :address, :email, :employee_number, :created_at, :updated_at
json.url employee_url(employee, format: :json)
