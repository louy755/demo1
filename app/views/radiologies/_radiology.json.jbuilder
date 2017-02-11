json.extract! radiology, :id, :viewer, :entry, :patient_id, :created_at, :updated_at
json.url radiology_url(radiology, format: :json)