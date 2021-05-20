# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  course_id  :integer
#  student_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class Enrollment < ApplicationRecord
    belongs_to :course,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Course

    belongs_to :student,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :User


end


#course_id belongs to courses?
#student_id belongs to users?

#belongs_to is always in the class that has foreign key
#every belongs_to has a corresponding has_many in the other class


#creating new method called student
#setting primary key to ID (happens implicitly in belongs_to) --> ID from User
#class_name = tells rails where to look for primary key
