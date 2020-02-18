class Task < ApplicationRecord
  belongs_to :user
  scope :done, -> { where.not(done_at: nil) }
  scope :undone, -> { where(done_at: nil) }
  validates :content, presence: true, length: { maximum: 100 }

  def done!
    update!(done_at: Time.current)
  end

  def undone!
    update!(done_at: nil)
  end
end
