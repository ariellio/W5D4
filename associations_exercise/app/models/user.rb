# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null


class User < ApplicationRecord
    has_many :enrollments,
        primary_key: :id, 
        foreign_key: :student_id,
        class_name: :Enrollment
    
    has_many :enrolled_courses, 
        through: :enrollments,
        primary_key: :id,
        foreign_key: :course_id,
        source: :course
        #source should be a method, not a class

    


end


#enrollments --> things from Enrollment.rb 
#enrolled_courses --> course.rb?

#thru and source:
    #doesn't create anything new, always something you already have (or else you forgot to make it)
 
