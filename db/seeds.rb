
UsersTodo.destroy_all
Todo.destroy_all
Project.destroy_all
User.destroy_all

['Developer1', 'Developer2', 'Developer3'].each{ |name| User.create!({name: name, email: "#{name.downcase}@developer.com", password: "12345678", password_confirmation: "12345678", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}) }
User.create!(name: "admin", email: "admin@admin.com", password: "admin123", password_confirmation: "admin123", admin: true )


# Seed for creating todos
# project_ids = Project.all.map(&:id)
# status = ['new', 'in progress', 'done']
# (1..(rand(20..40))).each do |num|
#   todo = Todo.create!({name: "Task #{num}", status: status.sample, project_id: project_ids.sample})
#   user = User.where.not('admin = true').sample
#   user.todos << todo
#   user.projects << todo.project unless user.projects.include?(todo.project)
#   user.save!
# end