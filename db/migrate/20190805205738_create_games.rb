class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.column(:team_one, :string)
      t.column(:team_two, :string)
      t.column(:winner, :string)
      t.column(:loser, :string)
    end
  end
end
