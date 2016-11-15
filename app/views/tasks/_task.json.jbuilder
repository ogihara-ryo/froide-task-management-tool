json.extract!(
  task, :id, :title, :memo, :priority, :estimate_hour, :actual_hour, :started_at, :finished_at,
  :status, :user_id, :created_at, :updated_at
)
json.url task_url(task, format: :json)
