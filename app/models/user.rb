class User < ApplicationRecord
    VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    VALID_PHONE_NUMBER = /\A\d{11}\z/
    VALID_NAME = /\A[А-Яа-яA-Za-z]+\z/i
                        
    validates :first_name, presence: true, length: { maximum: 50 },
                           format: { with:  VALID_NAME } 
    validates :last_name, presence: true, length: { maximum: 50 },
                          format: { with:  VALID_NAME } 
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: VALID_EMAIL }
    validates :phone, presence: true,
                      format: {with: VALID_PHONE_NUMBER }
end
