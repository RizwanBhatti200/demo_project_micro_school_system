class JoinRequest < ApplicationRecord
  belongs_to :student
  belongs_to :pod


  def self.multi_create(params)
    pod = params[:pod_id]
    student_ids =  params[:join_request][:student_id].reject(&:empty?)
    student_ids.each do |student_id|
    join_request = JoinRequest.create(student_id: student_id, pod_id: pod)
    end
  end
end
