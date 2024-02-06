view: bitacora_monitor_log {
  sql_table_name: `envases-analytics-qa.monitor_extractores.BITACORA_MONITOR_LOG` ;;

  dimension: ds_destino {
    type: string
    sql: ${TABLE}.ds_destino ;;
  }
  dimension_group: fecha_ejecucion_monitor {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_ejecucion_monitor ;;
  }
  dimension: hora_ejecucion_monitor {
    type: string
    description: "hora de ejecucion del monitor"
    sql:FORMAT_DATETIME("%T",${TABLE}.fecha_ejecucion_monitor) ;;
  }
  dimension: id_operacion {
    type: number
    sql: ${TABLE}.id_operacion ;;
  }
  dimension: id_proceso_aecor {
    type: string
    sql: ${TABLE}.id_proceso_aecor ;;
  }
  dimension: maquina_cliente {
    type: string
    description: "Nombre de la maquina ejecutando el monitor"
    sql: ${TABLE}.maquina_cliente ;;
  }
  dimension: msg_tarea {
    type: string
    sql: ${TABLE}.msg_tarea ;;
  }
  dimension: resultado_tarea {
    type: string
    sql: ${TABLE}.resultado_tarea ;;
  }
  measure: count {
    type: count
  }
}
