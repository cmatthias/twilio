module Twilio
  # The Account resource represents your Twilio Account. 
  class Account < TwilioObject
    def get
      Twilio.get('')
    end

    def create(name)
      Twilio.post("/Accounts", :body => {:FriendlyName => name})
    end
    
    def update_name(name)
      Twilio.put('', :body => {:FriendlyName => name}) 
    end
  end
end
