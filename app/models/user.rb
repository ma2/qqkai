class User < ApplicationRecord
    has_many :credentials, dependent: :destroy

    def self.authenticate_by_passkey(id)
      user = find_by(id: id)
      user if user&.credentials&.any?
    end
end
