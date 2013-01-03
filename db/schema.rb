# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121229160634) do

  create_table "busqueda_comercios_forms", :force => true do |t|
    t.integer  "region_id"
    t.integer  "ciudad_id"
    t.string   "fechaBusqueda"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "hora"
  end

  create_table "ciudads", :force => true do |t|
    t.string   "nombre"
    t.integer  "region_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "ciudads", ["region_id", "created_at"], :name => "index_ciudads_on_region_id_and_created_at"

  create_table "comercios", :force => true do |t|
    t.string   "nombre"
    t.integer  "rubro_id"
    t.integer  "ciudad_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "descripcion"
    t.string   "direccion"
    t.string   "latitud"
    t.string   "longitud"
    t.string   "telefono"
    t.string   "email"
    t.integer  "user_id"
    t.string   "cuentaCorriente"
    t.string   "identificadorComercio"
    t.boolean  "estado"
    t.string   "rut"
    t.string   "logo"
    t.integer  "region_id"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "gmaps"
  end

  create_table "estado_recursos", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "estado_reservas", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "horas", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "imagen_comercios", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "comercio_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "instalacions", :force => true do |t|
    t.string   "nombre"
    t.integer  "recinto_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rango_reservas", :force => true do |t|
    t.string   "nombre"
    t.string   "inicio"
    t.string   "fin"
    t.integer  "tipoReserva_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "recintos", :force => true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "recursos", :force => true do |t|
    t.string   "nombre"
    t.string   "precio"
    t.string   "precioReserva"
    t.string   "descripcion"
    t.integer  "comercio_id"
    t.integer  "tipoReserva_id"
    t.integer  "estadoRecurso_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "regions", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reservas", :force => true do |t|
    t.string   "descripcion"
    t.integer  "recurso_id"
    t.integer  "rangoReserva_id"
    t.integer  "estadoReserva_id"
    t.date     "fechaReserva"
    t.datetime "fechaTransaccion"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "hora_id"
  end

  create_table "rubros", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "descripcion"
    t.string   "logo"
  end

  create_table "tipo_reservas", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
