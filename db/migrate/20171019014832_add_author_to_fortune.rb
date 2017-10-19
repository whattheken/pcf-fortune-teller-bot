class AddAuthorToFortune < ActiveRecord::Migration[5.1]
  def change
    add_column :fortunes, :author, :string
  end
end
