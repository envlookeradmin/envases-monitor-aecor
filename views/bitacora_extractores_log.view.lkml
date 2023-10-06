view: bitacora_extractores_log {
  sql_table_name: `envases-analytics-eon-poc.monitor_extractores.BITACORA_EXTRACTORES_LOG` ;;

  dimension: desc_resultado_ejecucion {
    type: string
    sql: ${TABLE}.desc_resultado_ejecucion ;;
  }
  dimension: detalle_cdc {
    type: string
    sql: ${TABLE}.detalle_cdc ;;
  }
  dimension: ds_destino {
    type: string
    sql: ${TABLE}.ds_destino ;;
  }
  dimension_group: fecha_ejecucion_monitor {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_ejecucion_monitor ;;
  }
  dimension_group: fecha_ejecucion_tarea {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_ejecucion_tarea ;;
  }
  dimension_group: fecha_ejecucion_tarea_cdmx {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: DATETIME(${TABLE}.fecha_ejecucion_tarea,'America/Mexico_City') ;;
  }
  dimension: hora_ejecucion_tarea {
    type: string
    description: "hora de ejecucion del tarea"
    sql:FORMAT_DATETIME("%T",${TABLE}.fecha_ejecucion_tarea) ;;
  }
  dimension: id_operacion {
    primary_key: yes
    type: number
    sql: ${TABLE}.id_operacion ;;
  }
  dimension: id_proceso_aecor {
    type: string
    sql: ${TABLE}.id_proceso_aecor ;;
  }
  dimension: id_resultado_ejecucion {
    type: number
    sql: ${TABLE}.id_resultado_ejecucion ;;
  }
  dimension: json_ejecucion {
    type: string
    sql: ${TABLE}.json_ejecucion ;;
  }
  measure: registros_procesados {
    type: sum
    sql: ${TABLE}.registros_procesados ;;
  }
  dimension: maquina_cliente {
    type: string
    description: "Nombre de la maquina ejecutando el monitor"
    sql: ${TABLE}.maquina_cliente ;;
  }
  dimension: tabla {
    type: string
    sql: ${TABLE}.tabla ;;
  }
  dimension: tipo_extractor {
    type: string
    sql: ${TABLE}.tipo_extractor ;;
  }
  measure: count {
    type: count
  }
}
