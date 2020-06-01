class Kitten 
  def self.see_kitten
    response = HTTParty.get('http://placekitten.com/200/300')
  end 
end 