view: bitacora_monitor_log {
  sql_table_name: `envases-analytics-eon-poc.monitor_extractores.BITACORA_MONITOR_LOG` ;;

  dimension: ds_destino {
    type: string
    description: "Dataset de destino"
    sql: ${TABLE}.ds_destino ;;
  }
  dimension_group: fecha_ejecucion_monitor {
    type: time
    description: "Fecha y hora de ejecucion del monitor"
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_ejecucion_monitor ;;
  }
  dimension: id_operacion {
    type: number
    description: "Identificador de ejecucion del proceso"
    sql: ${TABLE}.id_operacion ;;
  }
  dimension: id_proceso_aecor {
    type: string
    description: "Tarea de Aecorsoft a validada"
    sql: ${TABLE}.id_proceso_aecor ;;
  }
  dimension: maquina_cliente {
    type: string
    description: "Nombre de la maquina ejecutando el monitor"
    sql: ${TABLE}.maquina_cliente ;;
  }
  dimension: msg_tarea {
    type: string
    description: "Mensaje de Error o exito del monitor"
    sql: ${TABLE}.msg_tarea ;;
  }
  dimension: resultado_tarea {
    type: string
    description: "Resultado de la validacion de la tarea"
    sql: ${TABLE}.resultado_tarea ;;
  }
  measure: count {
    type: count
  }
}
