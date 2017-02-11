json.extract! document, :id, :viewer, :entry, :patient_id, :created_at, :updated_at
json.url document_url(document, format: :json)