Rails.application.routes.draw do

  get 'home/index'

  devise_for :users
  root "home#index"

  get 'administradores/', to: 'administradors#index', as: 'administradors'
  get 'administradores/nuevo', to: 'administradors#nuevo', as: 'nuevo_administrador'
  get 'administradores/:id', to: 'administradors#mostrar', as: 'administrador'
  get 'administradores/:id/editar', to: 'administradors#editar', as: 'editar_administrador'

  put 'administradores/:id', to: 'administradors#update'
  patch 'administradores/:id', to: 'administradors#update'

  post 'administradores/', to: 'administradors#crear'
  delete 'administradores/:id',to: 'administradors#eliminar'

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

  get 'profesores/', to: 'profesors#index', as: 'profesors'
  get 'profesores/nuevo', to: 'profesors#nuevo', as: 'nuevo_profesor'
  get 'profesores/:id', to: 'profesors#mostrar', as: 'profesor'
  get 'profesores/:id/editar', to: 'profesors#editar', as: 'editar_profesor'

  put 'profesores/:id', to: 'profesors#update'
  patch 'profesores/:id', to: 'profesors#update'

  post 'profesores/', to: 'profesors#crear'
  delete 'profesores/:id',to: 'profesors#eliminar'

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

end
