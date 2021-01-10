class CreateProyects < ActiveRecord::Migration[5.2]
  def change
    create_table :proyects do |t|
      t.string :name
      t.string :description
      t.date :started
      t.date :finished
      t.string :state, default:'propuesta'

      t.timestamps
    end
  end
end
