class Patient < ApplicationRecord
	has_one :document
	has_one :lab
	has_one :main
	has_one :order
	has_one :radiology
end
