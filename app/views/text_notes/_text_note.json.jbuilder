json.extract! text_note, :id, :body, :order, :size, :color, :board_id, :created_at, :updated_at
json.url text_note_url(text_note, format: :json)
