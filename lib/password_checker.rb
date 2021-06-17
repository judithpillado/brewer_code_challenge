class PasswordChecker
  attr_reader :pw_hash

  def initialize(pw_hash)
    @pw_hash = JSON.parse(pw_hash)
  end 

  def letter_in(key)
    key.split[1]
  end

  def minimum(key)
    key.split('-')[0].to_i
  end

  def maximum(key) 
    key.split('-')[1].split(' ')[0].to_i
  end
end