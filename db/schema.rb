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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160913135111) do

  create_table "balances", force: :cascade do |t|
    t.integer  "saldo_anterior"
    t.integer  "entradas"
    t.integer  "salidas"
    t.integer  "saldo_actual"
    t.integer  "caja_nro"
    t.integer  "empleado_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["empleado_id"], name: "index_balances_on_empleado_id"
  end

  create_table "cargos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "salario_devengado"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "catalogo_ropas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "valor"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "ciudades", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "departamento_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["departamento_id"], name: "index_ciudades_on_departamento_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "nro_documento"
    t.integer  "tipos_documento_id"
    t.string   "telefono"
    t.string   "celular"
    t.string   "email"
    t.string   "direccion"
    t.integer  "ciudad_id"
    t.date     "fecha_nacimiento"
    t.boolean  "genero"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["ciudad_id"], name: "index_clientes_on_ciudad_id"
    t.index ["tipos_documento_id"], name: "index_clientes_on_tipos_documento_id"
  end

  create_table "departamentos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detalles", force: :cascade do |t|
    t.integer  "producto_id"
    t.integer  "cantidad_producto"
    t.integer  "valor"
    t.integer  "venta_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["producto_id"], name: "index_detalles_on_producto_id"
    t.index ["venta_id"], name: "index_detalles_on_venta_id"
  end

  create_table "empleados", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "nro_documento"
    t.integer  "tipos_documento_id"
    t.integer  "cargo_id"
    t.string   "telefono"
    t.string   "celular"
    t.string   "email"
    t.string   "direccion"
    t.integer  "ciudad_id"
    t.integer  "estados_civil_id"
    t.date     "inicio_contrato"
    t.date     "fin_contrato"
    t.time     "hora_entrada"
    t.time     "hora_salida"
    t.date     "fecha_nacimiento"
    t.boolean  "genero"
    t.string   "factor_rh"
    t.integer  "usuario_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["cargo_id"], name: "index_empleados_on_cargo_id"
    t.index ["ciudad_id"], name: "index_empleados_on_ciudad_id"
    t.index ["estados_civil_id"], name: "index_empleados_on_estados_civil_id"
    t.index ["tipos_documento_id"], name: "index_empleados_on_tipos_documento_id"
    t.index ["usuario_id"], name: "index_empleados_on_usuario_id"
  end

  create_table "estados_civiles", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "marca"
    t.date     "garantia"
    t.integer  "proveedor_id"
    t.integer  "cantidad"
    t.integer  "precio"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["proveedor_id"], name: "index_productos_on_proveedor_id"
  end

  create_table "proveedores", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipos_documentos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipos_pagos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "useres", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_useres_on_email", unique: true
    t.index ["reset_password_token"], name: "index_useres_on_reset_password_token", unique: true
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre_usuario"
    t.string   "contrasena"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "ventas", force: :cascade do |t|
    t.date     "fecha"
    t.time     "hora"
    t.integer  "total"
    t.integer  "tipos_pago_id"
    t.integer  "empleado_id"
    t.integer  "cliente_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["cliente_id"], name: "index_ventas_on_cliente_id"
    t.index ["empleado_id"], name: "index_ventas_on_empleado_id"
    t.index ["tipos_pago_id"], name: "index_ventas_on_tipos_pago_id"
  end

end
