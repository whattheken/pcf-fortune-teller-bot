class CreateFortunes < ActiveRecord::Migration[5.1]
  def change
    create_table :fortunes do |t|
      t.text :text

      t.timestamps
    end
  end
end
