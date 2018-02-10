Task.create! name: "Meet Mr. Miyagi", complete: true
Task.create! name: "Paint the fence", complete: true
Task.create! name: "Wax the car"
Task.create! name: "Sand the deck"
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?