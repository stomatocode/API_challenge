class CreateReposTable < ActiveRecord::Migration
  def change
    create_table :repos do |t|
      t.text :name
      t.text :contents
      
      t.timestamps
    end
  end
end
