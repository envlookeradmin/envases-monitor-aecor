connection: "monitor-aecorsoft"

# include all the views
include: "/views/**/*.view.lkml"
include: "/**/*.dashboard"

datagroup: monitor_de_extractores_pr_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: monitor_de_extractores_pr_default_datagroup

explore: bitacora_extractores_log {}

explore: bitacora_monitor_log {


  join: bitacora_extractores_log {
    type: left_outer
    sql_on: ${bitacora_monitor_log.id_operacion} = ${bitacora_extractores_log.id_operacion} and
            ${bitacora_monitor_log.fecha_ejecucion_monitor_date} = ${bitacora_extractores_log.fecha_ejecucion_monitor_date} and
            ${bitacora_monitor_log.id_proceso_aecor} = ${bitacora_extractores_log.id_proceso_aecor};;
    relationship: many_to_one
  }




}
