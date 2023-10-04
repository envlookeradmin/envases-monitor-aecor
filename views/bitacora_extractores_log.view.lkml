view: bitacora_extractores_log {
  sql_table_name: `envases-analytics-eon-poc.monitor_extractores.BITACORA_EXTRACTORES_LOG` ;;

  dimension: desc_resultado_ejecucion {
    type: string
    description: "Descripcion del error de la tarea de aecorsoft"
    sql: ${TABLE}.desc_resultado_ejecucion ;;
  }
  dimension: detalle_cdc {
    type: string
    description: "Numero de registros Borrados, Actualizados e Insertados"
    sql: ${TABLE}.detalle_cdc ;;
  }
  dimension: ds_destino {
    type: string
    description: "Dataset de destino"
    sql: ${TABLE}.ds_destino ;;
  }
  dimension_group: fecha_ejecucion_monitor {
    type: time
    description: "Fecha y hora en que se ejecuta el monitor"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_ejecucion_monitor ;;
  }
  dimension_group: fecha_ejecucion_tarea {
    type: time
    description: "Fecha y hora de de ejecucion de la tarea de aecorsoft"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_ejecucion_tarea ;;
  }
  dimension: id_operacion {
    type: number
    description: "Identificador de ejecucion del proceso"
    sql: ${TABLE}.id_operacion ;;
  }
  dimension: id_proceso_aecor {
    type: string
    description: "Tarea de Aecorsoft a validar"
    sql: ${TABLE}.id_proceso_aecor ;;
  }
  dimension: id_resultado_ejecucion {
    type: number
    description: "Codigo de error de la tarea de aecorsoft"
    sql: ${TABLE}.id_resultado_ejecucion ;;
  }
  dimension: json_ejecucion {
    type: string
    description: "Mensaje con el resultado ejecucion de la tarea de aecorsoft en formato json"
    sql: ${TABLE}.json_ejecucion ;;
  }
  dimension: maquina_cliente {
    type: string
    description: "Nombre de la maquina ejecutando el monitor"
    sql: ${TABLE}.maquina_cliente ;;
  }
  dimension: registros_procesados {
    type: number
    description: "Numero de registros procesados"
    sql: ${TABLE}.registros_procesados ;;
  }
  dimension: tabla {
    type: string
    description: "Tabla extraida"
    sql: ${TABLE}.tabla ;;
  }
  dimension: tipo_extractor {
    type: string
    description: "Tipo de extractor"
    sql: ${TABLE}.tipo_extractor ;;
  }
  measure: count {
    type: count
  }
}
