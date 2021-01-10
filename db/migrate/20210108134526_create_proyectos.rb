class CreateProyectos < ActiveRecord::Migration[5.2]
  def change
    create_table :proyectos do |t|
      t.string :name
      t.string :description
      t.string :state

      t.timestamps
    end
  end
end
