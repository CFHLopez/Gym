Rails.application.routes.draw do

  devise_for :users
  root "alumnos#index"

  get 'Adm/', to: 'administradors#index', as: 'administradors'
  get 'Adm/nuevo', to: 'administradors#nuevo', as: 'nuevo_administrador'
  get 'Adm/:id', to: 'administradors#mostrar', as: 'administrador'
  get 'Adm/:id/editar', to: 'administradors#editar', as: 'editar_administrador'

  put 'Adm/:id', to: 'administradors#update'
  patch 'Adm/:id', to: 'administradors#update'

  post 'Adm/', to: 'administradors#crear'
  delete 'Adm/:id',to: 'administradors#eliminar'

  get 'Clases/', to: 'clases#index', as: 'clases'
  get 'Clases/nuevo', to: 'clases#nuevo', as: 'nueva_clase'
  get 'Clases/:id', to: 'clases#mostrar', as: 'clase'
  get 'Clases/:id/editar', to: 'clases#editar', as: 'editar_clase'

  put 'Clases/:id', to: 'clases#update'
  patch 'Clases/:id', to: 'clases#update'

  post 'Clases/:id', to: 'clases#crear'
  delete 'Clases/:id', to: 'clases#eliminar'

  get 'Alum/', to: 'alumnos#index', as: 'alumnos'
  get 'Alum/nuevo', to: 'alumnos#nuevo', as: 'nuevo_alumno'
  get 'Alum/:id', to: 'alumnos#mostrar', as: 'alumno'
  get 'Alum/:id/editar', to: 'alumnos#editar', as: 'editar_alumno'

  put 'Alum/:id', to: 'alumnos#update'
  patch 'Alum/:id', to: 'alumnos#update'

  post 'Alum/', to: 'alumnos#crear'
  delete 'Alum/:id',to: 'alumnos#eliminar'

  get 'Profe/', to: 'profesors#index', as: 'profesors'
  get 'Profe/nuevo', to: 'profesors#nuevo', as: 'nuevo_profesor'
  get 'Profe/:id', to: 'profesors#mostrar', as: 'profesor'
  get 'Profe/:id/editar', to: 'profesors#editar', as: 'editar_profesor'

  put 'Profe/:id', to: 'profesors#update'
  patch 'Profe/:id', to: 'profesors#update'

  post 'Profe/', to: 'profesors#crear'
  delete 'Profe/:id',to: 'profesors#eliminar'

  get 'Plan/', to: 'plans#index', as: 'plans'
  get 'Plan/nuevo', to: 'plans#nuevo', as: 'nuevo_plan'
  get 'Plan/:id', to: 'plans#mostrar', as: 'plan'
  get 'Plan/:id/editar', to: 'plans#editar', as: 'editar_plan'

  put 'Plan/:id', to: 'plans#update'
  patch 'Plan/:id', to: 'plans#update'

  post 'Plan/', to: 'plans#crear'
  delete 'Plan/:id',to: 'plans#eliminar'

  get 'Pago/', to: 'pagos#index', as: 'pagos'
  get 'Pago/nuevo', to: 'pagos#nuevo', as: 'nuevo_pago'
  get 'Pago/:id', to: 'pagos#mostrar', as: 'pago'
  get 'Pago/:id/editar', to: 'pagos#editar', as: 'editar_pago'

  put 'Pago/:id', to: 'pagos#update'
  patch 'Pago/:id', to: 'pagos#update'

  post 'Pago/', to: 'pagos#crear'
  delete 'Pago/:id',to: 'pagos#eliminar'

  get 'Asistencia/', to: 'asistencias#index', as: 'asistencias'
  get 'Asistencia/nuevo', to: 'asistencias#nuevo', as: 'nuevo_asistencia'
  get 'Asistencia/:id', to: 'asistencias#mostrar', as: 'asistencia'
  get 'Asistencia/:id/editar', to: 'asistencias#editar', as: 'editar_asistencia'

  put 'Asistencia/:id', to: 'asistencias#update'
  patch 'Asistencia/:id', to: 'asistencias#update'

  post 'Asistencia/', to: 'asistencias#crear'
  delete 'Asistencia/:id',to: 'asistencias#eliminar'

end
