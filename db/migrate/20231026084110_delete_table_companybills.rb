class DeleteTableCompanybills < ActiveRecord::Migration[5.2]
  def change
    drop_table :companybills
  end
end
