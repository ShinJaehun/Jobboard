class Job < ApplicationRecord
  has_one_attached :avatar

  def thumb
    return self.avatar.variant(resize: '200x200').processed
  end

  belongs_to :user

  JOB_TYPES = ["Full-time", "Part-time", "Contract", "Freelance"]
end
