class MxAdminUser < ActiveRecord::Base

  belongs_to :added_by, class_name: "MxAdminUser", foreign_key: "addedBy"

  def hello_world
    puts 'hello'
  end

end