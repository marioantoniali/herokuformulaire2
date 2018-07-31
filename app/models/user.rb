class User < ApplicationRecord
    validates :name, uniqueness: true, format: {without: /\s/}
end
