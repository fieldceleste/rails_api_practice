class KittenFact

  def self.see_kitten  
    response = HTTParty.get("https://cat-fact.herokuapp.com/facts")
  end

end