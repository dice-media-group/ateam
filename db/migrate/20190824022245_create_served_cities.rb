class CreateServedCities < ActiveRecord::Migration[6.0]
  def change
    create_table :served_cities do |t|
      t.string :name

      t.timestamps
    end
  end
end
