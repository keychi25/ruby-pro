require './lib/deep_freezable'

class Bank
  extend DeepFreezable

  CURRENDIES = deep_freezable({'Japan' => 'yen', 'US' => 'doller' , 'India' => 'ruqee'})
end
