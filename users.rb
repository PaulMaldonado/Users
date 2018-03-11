class User
	attr_accessor :name, :age, :email

	def initialize(name, age, email)
		@name = name
		@age = age
		@email = email
		@id = 0
	end

	def show_user(show_password)
		if show_password == check_password
			puts "Nombre: #{@name} | Edad: #{@age} | Correo: #{@email} | Su id es: #{id}"
		else
			puts password_error
		end
	end

	private

	def id
		@id += 1
	end

	def check_password
		@password = 123456
	end

	def password_error
		puts "Contraseña equivacada, Intente otra vez"
	end
end

user = User.new("Jorge", 25, "paul@gmail.com")
puts user.show_user(123456)