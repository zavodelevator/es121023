class Order < ApplicationRecord
    has_and_belongs_to_many :products
    belongs_to :our_firm
    belongs_to :client
    has_one :send_act
end
