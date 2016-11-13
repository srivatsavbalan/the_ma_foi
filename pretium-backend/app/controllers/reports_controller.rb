class ReportsController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :validate_login, only: [:reports]
  def reports
    reports = {
      ratingStatistics: Rating.ratingStatistics,
      teacherStatistics: Teacher.teacherStatistics,
      studentStatistics: {
        no_of_students: Student.count,
        no_of_ratings: Rating.count
      },
      skillStatistics: Skill.skillStatistics,
    }
    respond_to do |format|
      format.json { render json: reports, status: :ok }
    end
  end
end
