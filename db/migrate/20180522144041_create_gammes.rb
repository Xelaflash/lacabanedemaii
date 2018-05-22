class CreateGammes < ActiveRecord::Migration[5.2]
  def change
    create_table :gammes do |t|
      t.string :name

      t.timestamps
    end
  end
end
