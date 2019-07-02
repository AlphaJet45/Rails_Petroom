class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :espece
      t.string :sexe
      t.integer :age
      t.text :desc

      t.timestamps
    end
  end
end
