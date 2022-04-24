class Employee < ApplicationRecord
    validates :name ,presence: true, uniqueness: true
    validates :email ,presence: true, uniqueness: true
    validates :address ,presence: true
    validates :tel ,presence: true, uniqueness: true
    validates :employee_number ,presence: true, uniqueness: true
    belongs_to :user
end
        