json.extract! student, :id, :f_name, :l_name, :age, :gender, :created_at, :updated_at
json.url student_url(student, format: :json)
