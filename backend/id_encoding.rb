require 'base64'
client_id = '574ac916ae7647769b4661fe89a57c8a'
client_secret = 'a910e0f99dc643b3be3d1fd4e08b6fc6'
encoded_data = Base64.strict_encode64(client_id + ':' + client_secret)
print authorization_string = 'Basic ' + encoded_data;