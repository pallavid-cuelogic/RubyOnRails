class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :title
      t.string :dname
      t.integer :rid
      t.date :cdate
      t.date :udate

      t.timestamps null: false
    end
  end
end
