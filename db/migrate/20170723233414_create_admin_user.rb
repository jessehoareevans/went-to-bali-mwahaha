class CreateAdminUser < ActiveRecord::Migration[5.0]
  def change
    User.create! do |a|
      a.email = "manchester@united.com"
      a.password = "arethegreatest"
      a.admin = true
    end
  end
end
