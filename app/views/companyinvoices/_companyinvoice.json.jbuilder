json.extract! companyinvoice, :id, :invoicename, :companybill_id, :created_at, :updated_at
json.url companyinvoice_url(companyinvoice, format: :json)
