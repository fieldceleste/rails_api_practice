require 'rails_helper'

describe Kitten, :vcr => true do

  it "returns a 200 success header when the API call is made" do
    response = Kitten.see_kitten
    expect(response.code).to(eq(200))
  end
end