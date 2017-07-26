# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.new
users.email = 'funcionalitychris@gmail.com'
users.encrypted_password = '12345678'
reset_password_token = '12345678'
users.password = '12345678'
users.password_confirmation = '12345678'
users.role = 'Administrador'
users.nombre = 'Christian Lopez'
users.edad = '27'
users.sexo = 'Masculino'
users.rut = '17386250-4'
users.observacion = 'Estudiante Ing. Software'
users.save