Rails.application.routes.draw do

  get 'visitas/index'
  get 'total/index'
  get 'users/index'
  get 'user/index'
  get 'info/index'
  get 'home/index'
  
  devise_for :users, controllers:{registrations: "registrations"}
  
  as :user do
    get "/register", to: "registrations#new", as: "register"
  end
  
  root "home#index"

  get 'users/', to: 'users#index', as: 'users'
  get 'users/nuevo', to: 'users#nuevo', as: 'nuevo_user'
  get 'users/:id', to: 'users#mostrar', as: 'user'
  get 'users/:id/editar', to: 'users#update', as: 'editar_user'

  put 'users/:id', to: 'users#update'
  patch 'users/:id', to: 'users#update'

  post 'users/', to: 'users#crear'
  delete 'users/:id',to: 'users#eliminar'

  get 'clases/', to: 'clases#index', as: 'clases'
  get 'clases/nuevo', to: 'clases#nuevo', as: 'nueva_clase'
  get 'clases/:id/editar', to: 'clases#editar', as: 'editar_clase'
  get 'clases/:id', to: 'clases#mostrar', as: 'clase'

  put 'clases/:id', to: 'clases#update'
  patch 'clases/:id', to: 'clases#update'

  post 'clases', to: 'clases#crear'
  delete 'clases/:id', to: 'clases#eliminar'

  get 'alumnos/', to: 'alumnos#index', as: 'alumnos'
  get 'alumnos/nuevo', to: 'alumnos#nuevo', as: 'nuevo_alumno'
  get 'alumnos/:id', to: 'alumnos#mostrar', as: 'alumno'
  get 'alumnos/:id/editar', to: 'alumnos#editar', as: 'editar_alumno'

  put 'alumnos/:id', to: 'alumnos#update'
  patch 'alumnos/:id', to: 'alumnos#update'

  post 'alumnos/', to: 'alumnos#crear'
  delete 'alumnos/:id',to: 'alumnos#eliminar'

  get 'fichas/', to: 'fichas#index', as: 'fichas'
  get 'fichas/nuevo', to: 'fichas#nuevo', as: 'nueva_ficha'
  get 'fichas/:id', to: 'fichas#mostrar', as: 'ficha'
  get 'fichas/:id/editar', to: 'fichas#editar', as: 'editar_ficha'

  put 'fichas/:id', to: 'fichas#update'
  patch 'fichas/:id', to: 'fichas#update'

  post 'fichas/', to: 'fichas#crear'
  delete 'fichas/:id',to: 'fichas#eliminar'

  get 'planes/', to: 'plans#index', as: 'plans'
  get 'planes/nuevo', to: 'plans#nuevo', as: 'nuevo_plan'
  get 'planes/:id', to: 'plans#mostrar', as: 'plan'
  get 'planes/:id/editar', to: 'plans#editar', as: 'editar_plan'

  put 'planes/:id', to: 'plans#update'
  patch 'planes/:id', to: 'plans#update'

  post 'planes/', to: 'plans#crear'
  delete 'planes/:id',to: 'plans#eliminar'

  get 'pagos/', to: 'pagos#index', as: 'pagos'
  get 'pagos/nuevo', to: 'pagos#nuevo', as: 'nuevo_pago'
  get 'pagos/:id', to: 'pagos#mostrar', as: 'pago'
  get 'pagos/:id/editar', to: 'pagos#editar', as: 'editar_pago'

  put 'pagos/:id', to: 'pagos#update'
  patch 'pagos/:id', to: 'pagos#update'

  post 'pagos/', to: 'pagos#crear'
  delete 'pagos/:id',to: 'pagos#eliminar'

  get 'asistencias/', to: 'asists#index', as: 'asists'
  get 'asistencias/nuevo', to: 'asists#nuevo', as: 'nueva_asist'
  get 'asistencias/:id', to: 'asists#mostrar', as: 'asist'
  get 'asistencias/:id/editar', to: 'asists#editar', as: 'editar_asist'

  put 'asistencias/:id', to: 'asists#update'
  patch 'asistencias/:id', to: 'asists#update'

  post 'asistencias/', to: 'asists#crear'
  delete 'asistencias/:id',to: 'asists#eliminar'

  get 'rutinas/', to: 'rutinas#index', as: 'rutinas'
  get 'rutinas/nuevo', to: 'rutinas#nuevo', as: 'nueva_rutina'
  get 'rutinas/:id', to: 'rutinas#mostrar', as: 'rutina'
  get 'rutinas/:id/editar', to: 'asists#editar', as: 'editar_rutina'

  put 'rutinas/:id', to: 'rutinas#update'
  patch 'rutinas/:id', to: 'rutinas#update'

  post 'rutinas/', to: 'rutinas#crear'
  delete 'rutinas/:id',to: 'rutinas#eliminar'

  get 'planclase/', to: 'planclase#index', as: 'planclases'
  get 'planclase/nuevo/:id/pregunta', to: 'planclase#nuevo', as: 'nuevo_planclase'
  get 'planclase/:id',to: 'planclase#mostrar', as: 'planclase'
  #get 'planclase/:id/editar', to: 'pregunta_informes#editar', as: 'editar_planclase'
  post 'planclase', to: 'planclase#crear', as: 'crear_planclase'
  put 'planclase/:id' , to: 'planclase#update'
  patch 'planclase/:id' ,to: 'planclase#update'
  delete 'planclase/:id', to: 'planclase#eliminar'
end
