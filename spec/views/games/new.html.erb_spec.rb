require 'rails_helper'

RSpec.describe "games/new", type: :view do
  before(:each) do
    assign(:game, Game.new(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new game form" do
    render

    assert_select "form[action=?][method=?]", games_path, "post" do

      assert_select "input#game_name[name=?]", "game[name]"

      assert_select "input#game_description[name=?]", "game[description]"
    end
  end
end
