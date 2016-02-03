class User < ActiveRecord::Base
validates :mail, :content, presence: true 

before_save :default_name_to_mail

def default_name_to_mail
 if name == nil
   self.name=self.mail.sub(/\@.*/,"")
  end
 end
end
