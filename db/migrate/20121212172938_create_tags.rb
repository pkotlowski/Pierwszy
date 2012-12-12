class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.text :quotation
      t.string :source

      t.timestamps
    end
  end
end
