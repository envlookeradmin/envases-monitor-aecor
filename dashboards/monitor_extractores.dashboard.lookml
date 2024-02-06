---
- dashboard: monitor_extractores_
  title: 'Monitor Extractores '
  layout: newspaper
  preferred_viewer: dashboards-next
  description: Dashboard de monitoreo de extractores de aecorsoft.
  preferred_slug: BBr2Ql2x6sHYb1HUj26oAT
  elements:
  - title: Bitácora Ejecución Aecorsoft
    name: Bitácora Ejecución Aecorsoft
    model: monitor
    explore: bitacora_monitor_log
    type: looker_grid
    fields: [bitacora_monitor_log.fecha_ejecucion_monitor_date, bitacora_monitor_log.hora_ejecucion_monitor,
      bitacora_monitor_log.id_operacion, bitacora_monitor_log.id_proceso_aecor, bitacora_monitor_log.ds_destino,
      bitacora_monitor_log.msg_tarea, bitacora_monitor_log.resultado_tarea]
    sorts: [bitacora_monitor_log.fecha_ejecucion_monitor_date desc, bitacora_monitor_log.hora_ejecucion_monitor
        desc, bitacora_monitor_log.id_proceso_aecor]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", bitacora_monitor_log.fecha_ejecucion_monitor_date,
      bitacora_monitor_log.hora_ejecucion_monitor, bitacora_monitor_log.id_operacion,
      bitacora_monitor_log.id_proceso_aecor, bitacora_monitor_log.ds_destino, bitacora_monitor_log.resultado_tarea,
      bitacora_monitor_log.msg_tarea]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      bitacora_monitor_log.fecha_ejecucion_monitor_date: Fecha Ejecución Monitor
      bitacora_monitor_log.id_proceso_aecor: Extractor Aecorsoft
      bitacora_monitor_log.ds_destino: Dataset Destino
      bitacora_monitor_log.msg_tarea: Mensaje de Tarea
      bitacora_monitor_log.resultado_tarea: Resultado Extractor
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_font_color: "#FFF"
    header_background_color: "#1A73E8"
    series_value_format:
      bitacora_monitor_log.id_operacion:
        name: id
        format_string: '0'
        label: ID
    defaults_version: 1
    series_column_widths:
      bitacora_monitor_log.fecha_ejecucion_monitor_date: 126
      bitacora_monitor_log.hora_ejecucion_monitor: 122
      bitacora_monitor_log.id_operacion: 119
      bitacora_monitor_log.id_proceso_aecor: 215
      bitacora_monitor_log.ds_destino: 121
      bitacora_monitor_log.resultado_tarea: 88
    listen:
      Hora Ejecucion Monitor: bitacora_monitor_log.hora_ejecucion_monitor
      Dataset Destino: bitacora_monitor_log.ds_destino
      Proceso Aecor: bitacora_monitor_log.id_proceso_aecor
      Tipo Extractor: bitacora_extractores_log.tipo_extractor
      Ejecución Aecorsoft: bitacora_extractores_log.desc_resultado_ejecucion
      Fecha Ejecucion Monitor: bitacora_monitor_log.fecha_ejecucion_monitor_date
      Resultado Tarea: bitacora_monitor_log.resultado_tarea
    row: 0
    col: 0
    width: 24
    height: 23
  filters:
  - name: Fecha Ejecucion Monitor
    title: Fecha Ejecucion Monitor
    type: field_filter
    default_value: yesterday
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: monitor
    explore: bitacora_monitor_log
    listens_to_filters: []
    field: bitacora_monitor_log.fecha_ejecucion_monitor_date
  - name: Hora Ejecucion Monitor
    title: Hora Ejecucion Monitor
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: monitor
    explore: bitacora_monitor_log
    listens_to_filters: [Fecha Ejecucion Monitor, Proceso Aecor, Dataset Destino,
      Tipo Extractor, Ejecución Aecorsoft]
    field: bitacora_monitor_log.hora_ejecucion_monitor
  - name: Dataset Destino
    title: Dataset Destino
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: monitor
    explore: bitacora_monitor_log
    listens_to_filters: [Fecha Ejecucion Monitor, Hora Ejecucion Monitor, Proceso
        Aecor, Tipo Extractor, Ejecución Aecorsoft]
    field: bitacora_monitor_log.ds_destino
  - name: Proceso Aecor
    title: Proceso Aecor
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: monitor
    explore: bitacora_monitor_log
    listens_to_filters: [Fecha Ejecucion Monitor, Hora Ejecucion Monitor, Dataset
        Destino, Tipo Extractor, Ejecución Aecorsoft]
    field: bitacora_monitor_log.id_proceso_aecor
  - name: Tipo Extractor
    title: Tipo Extractor
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: monitor
    explore: bitacora_monitor_log
    listens_to_filters: [Fecha Ejecucion Monitor, Hora Ejecucion Monitor, Proceso
        Aecor, Dataset Destino, Ejecución Aecorsoft]
    field: bitacora_extractores_log.tipo_extractor
  - name: Ejecución Aecorsoft
    title: Ejecución Aecorsoft
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: monitor
    explore: bitacora_monitor_log
    listens_to_filters: [Fecha Ejecucion Monitor, Hora Ejecucion Monitor, Proceso
        Aecor, Dataset Destino, Tipo Extractor]
    field: bitacora_extractores_log.desc_resultado_ejecucion
  - name: Periodo del Gráfico
    title: Periodo del Gráfico
    type: field_filter
    default_value: 7 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: monitor
    explore: bitacora_monitor_log
    listens_to_filters: []
    field: bitacora_monitor_log.fecha_ejecucion_monitor_date
  - name: Resultado Tarea
    title: Resultado Tarea
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: monitor
    explore: bitacora_monitor_log
    listens_to_filters: []
    field: bitacora_monitor_log.resultado_tarea
