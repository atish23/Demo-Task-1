
UsersTodo.destroy_all
Todo.destroy_all
Project.destroy_all
User.destroy_all

['Atish', 'Dhiraj', 'Rohit'].each{ |name| User.create!({name: name, email: "#{name.downcase}@promobi.com", password: "12345678", password_confirmation: "12345678", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}) }
User.create!(name: "admin", email: "admin@admin.com", password: "admin123", password_confirmation: "admin123", admin: true )
