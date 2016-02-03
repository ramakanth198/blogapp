class Eat24signin < ActiveRecord::Base
validates :firstname, length: {minimum: 7}
validates :firstname, :lastname, :emailid, :emailidconformation, :password, presence: true
validates :emailid, format: { with: /\w{1,}/}
end