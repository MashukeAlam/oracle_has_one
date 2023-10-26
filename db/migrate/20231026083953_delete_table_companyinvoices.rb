class DeleteTableCompanyinvoices < ActiveRecord::Migration[5.2]
  def change
    drop_table :companyinvoices
  end
end
