class Alumnus < ActiveRecord::Base
  has_attached_file :picture, :styles => { :medium => "300x300>" }, :default_url => "http://placehold.it/150x150"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  def self.colleges
    pluck(:college).uniq.map do |c|
      {
        name: c,
        count: where(college: c).count
      }
    end
  end

  def self.majors
    pluck(:major).uniq.map do |m|
      {
        name: m,
        count: where(major: m).count
      }
    end
  end

  def self.years
    pluck(:year).uniq.map do |y|
      {
        name: y,
        count: where(year: y).count
      }
    end
  end

  def self.courses
    pluck(:course).uniq.map do |course|
      {
        name: course,
        count: where(course: course).count
      }
    end
  end

end