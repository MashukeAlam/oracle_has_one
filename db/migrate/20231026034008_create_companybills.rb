class CreateCompanybills < ActiveRecord::Migration[5.2]
  def change
    create_table :companybills do |t|
      t.string :companybillname

      t.timestamps
    end
  end
end
