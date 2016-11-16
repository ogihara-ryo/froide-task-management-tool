class Task < ApplicationRecord
  belongs_to :user
  enum status: { unstarted: 0, :'in progress' => 1, finished: 2 }
end
