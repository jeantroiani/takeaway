require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'
require './lib/order'

def send_message(to_customer)

# put your own credentials here
account_sid = 'ACa670d2bfd56bf2d6273d1321404ad244'
auth_token = '60b3ffa99ba9fc8a318851d5161e51b9'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token


@client.account.messages.create(
  :from => "+441565760055",
  :to => '+447462184402',
  :body => "Thank you! Your order was placed and will be delivered before #{Time.now}. The total is £#{order.amount_to_pay} "
)
end


def delivery_time
#{customer.order.amount_to_pay} 
end