class CreateCompanyinvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :companyinvoices do |t|
      t.string :invoicename
      t.references :companybill, foreign_key: true

      t.timestamps
    end
  end
end
