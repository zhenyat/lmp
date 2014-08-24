class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key 'behaviors',    'competencies',     name: 'behaviors_competency_id_fk'
    add_foreign_key 'behaviors',    'levels',           name: 'behaviors_level_id_fk'
    add_foreign_key 'competencies', 'clusters',         name: 'competencies_cluster_id_fk'
    add_foreign_key 'competencies', 'positions',        name: 'competencies_position_id_fk'
    add_foreign_key 'departments',  'units',            name: 'departments_units_id_fk'
    add_foreign_key 'departments',  'department_types', name: 'departments_departments_types_id_fk'
    add_foreign_key 'departments',  'businesses',         name: 'departments_businesses_id_fk'
    add_foreign_key 'employees',    'levels',           name: 'employees_level_id_fk'
    add_foreign_key 'employees',    'positions',        name: 'employees_position_id_fk'
    add_foreign_key 'employees',    'departments',      name: 'departments_position_id_fk'
    add_foreign_key 'positions',    'businesses',       name: 'positions_businesses_id_fk'
    add_foreign_key 'users',        'roles',            name: 'users_roles_id_fk'
    add_foreign_key 'units',        'unit_types',       name: 'units_unit_types_id_fk'
  end
end

