class KittenFacts

  def self.see_all_kitten  
    response = HTTParty.get("https://cat-fact.herokuapp.com/facts#{rand(1..100)}")
  end

end