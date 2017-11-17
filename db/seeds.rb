# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#usuarios

users = User.new
users.email = 'christian.lopez@alumnos.uda.cl'
users.encrypted_password = 'dx15071990'
users.reset_password_token = 'dx15071990'
users.password = 'dx15071990'
users.password_confirmation = 'dx15071990'
users.role = 'Administrador'
users.nombre = 'Christian Lopez'
users.edad = '27'
users.sexo = 'Masculino'
users.rut = '17386250-4'
users.observacion = 'Estudiante Ing. Software'
users.save

#planes
pl1 = Plan.new
pl1.nombre = '3xS'
pl1.precio = '15000'
pl1.desc = 'Asistencia 3 veces por semana'
pl1.save

pl2 = Plan.new
pl2.nombre = 'Libre'
pl2.precio = '18000'
pl2.desc = 'Asistencia lunes a sabado'
pl2.save