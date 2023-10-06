- dashboard: monitor_extractores_pr
  title: Monitor Extractores PR
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: VSY5S9QQawlwJW7g5FsnXJ
  elements:
  - title: Bitácora Ejecución Monitor
    name: Bitácora Ejecución Monitor
    model: monitor_de_extractores_pr
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
    size_to_fit: true
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
    truncate_header: true
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
    defaults_version: 1
    listen:
      Fecha Ejecucion Monitor: bitacora_monitor_log.fecha_ejecucion_monitor_date
      Hora Ejecución Monitor: bitacora_monitor_log.hora_ejecucion_monitor
      Dataset Destino: bitacora_monitor_log.ds_destino
      Proceso Aecor: bitacora_monitor_log.id_proceso_aecor
      Tipo Extractor: bitacora_extractores_log.tipo_extractor
      Ejecucion Aecorsoft: bitacora_extractores_log.desc_resultado_ejecucion
    row: 0
    col: 0
    width: 24
    height: 12
  - title: Temporalidad
    name: Temporalidad
    model: monitor_de_extractores_pr
    explore: bitacora_monitor_log
    type: looker_column
    fields: [bitacora_extractores_log.fecha_ejecucion_monitor_date, bitacora_monitor_log.count,
      bitacora_extractores_log.desc_resultado_ejecucion]
    pivots: [bitacora_extractores_log.desc_resultado_ejecucion]
    fill_fields: [bitacora_extractores_log.fecha_ejecucion_monitor_date]
    sorts: [bitacora_extractores_log.desc_resultado_ejecucion, bitacora_extractores_log.fecha_ejecucion_monitor_date
        desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    table_theme: white
    enable_conditional_formatting: false
    header_font_color: "#FFF"
    header_background_color: "#1A73E8"
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Hora Ejecución Monitor: bitacora_monitor_log.hora_ejecucion_monitor
      Dataset Destino: bitacora_monitor_log.ds_destino
      Proceso Aecor: bitacora_monitor_log.id_proceso_aecor
      Tipo Extractor: bitacora_extractores_log.tipo_extractor
      Ejecucion Aecorsoft: bitacora_extractores_log.desc_resultado_ejecucion
      Periodo del Gráfico: bitacora_extractores_log.fecha_ejecucion_monitor_date
    row: 13
    col: 0
    width: 24
    height: 13
  - title: Bitácora Ejecución Aecorsoft
    name: Bitácora Ejecución Aecorsoft
    model: monitor_de_extractores_pr
    explore: bitacora_monitor_log
    type: looker_grid
    fields: [bitacora_extractores_log.fecha_ejecucion_tarea_date, bitacora_extractores_log.hora_ejecucion_tarea,
      bitacora_extractores_log.id_proceso_aecor, bitacora_extractores_log.desc_resultado_ejecucion,
      bitacora_extractores_log.tipo_extractor, bitacora_extractores_log.detalle_cdc,
      bitacora_extractores_log.tabla, bitacora_extractores_log.registros_procesados,
      bitacora_extractores_log.json_ejecucion, bitacora_extractores_log.ds_destino]
    sorts: [bitacora_extractores_log.fecha_ejecucion_tarea_date desc, bitacora_extractores_log.hora_ejecucion_tarea
        desc, bitacora_extractores_log.id_proceso_aecor]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", bitacora_extractores_log.fecha_ejecucion_tarea_date,
      bitacora_extractores_log.hora_ejecucion_tarea, bitacora_extractores_log.id_proceso_aecor,
      bitacora_extractores_log.ds_destino, bitacora_extractores_log.tipo_extractor,
      bitacora_extractores_log.desc_resultado_ejecucion, bitacora_extractores_log.detalle_cdc,
      bitacora_extractores_log.tabla, bitacora_extractores_log.registros_procesados,
      bitacora_extractores_log.json_ejecucion]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      bitacora_extractores_log.detalle_cdc: Detalle CDC
      bitacora_extractores_log.desc_resultado_ejecucion: Resultado Ejecución
      bitacora_extractores_log.id_proceso_aecor: Extractor Aecorsoft
      bitacora_extractores_log.hora_ejecucion_tarea: Hora Ejecución Tarea
      bitacora_extractores_log.fecha_ejecucion_tarea_date: Fecha Ejecución Tarea
      bitacora_extractores_log.json_ejecucion: Detalle Ejecución
      bitacora_extractores_log.ds_destino: Dataset Destino
    series_cell_visualizations:
      bitacora_extractores_log.registros_procesados:
        is_active: true
    header_font_color: "#FFF"
    header_background_color: "#1A73E8"
    defaults_version: 1
    listen:
      Fecha Ejecucion Monitor: bitacora_monitor_log.fecha_ejecucion_monitor_date
      Hora Ejecución Monitor: bitacora_monitor_log.hora_ejecucion_monitor
      Dataset Destino: bitacora_monitor_log.ds_destino
      Proceso Aecor: bitacora_monitor_log.id_proceso_aecor
      Tipo Extractor: bitacora_extractores_log.tipo_extractor
      Ejecucion Aecorsoft: bitacora_extractores_log.desc_resultado_ejecucion
    row: 27
    col: 0
    width: 24
    height: 14
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"S","color":"hsl(0, 0%, 100%)"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 26
    col: 0
    width: 24
    height: 1
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"S","color":"hsl(0, 0%, 100%)"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 12
    col: 0
    width: 24
    height: 1
  filters:
  - name: Fecha Ejecucion Monitor
    title: Fecha Ejecucion Monitor
    type: field_filter
    default_value: today
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: monitor_de_extractores_pr
    explore: bitacora_monitor_log
    listens_to_filters: []
    field: bitacora_monitor_log.fecha_ejecucion_monitor_date
  - name: Hora Ejecución Monitor
    title: Hora Ejecución Monitor
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: monitor_de_extractores_pr
    explore: bitacora_monitor_log
    listens_to_filters: [Fecha Ejecucion Monitor, Dataset Destino, Proceso Aecor,
      Tipo Extractor, Ejecucion Aecorsoft]
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
    model: monitor_de_extractores_pr
    explore: bitacora_monitor_log
    listens_to_filters: [Fecha Ejecucion Monitor, Hora Ejecución Monitor, Proceso
        Aecor, Tipo Extractor, Ejecucion Aecorsoft]
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
    model: monitor_de_extractores_pr
    explore: bitacora_monitor_log
    listens_to_filters: [Fecha Ejecucion Monitor, Hora Ejecución Monitor, Dataset
        Destino, Tipo Extractor, Ejecucion Aecorsoft]
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
    model: monitor_de_extractores_pr
    explore: bitacora_monitor_log
    listens_to_filters: [Fecha Ejecucion Monitor, Hora Ejecución Monitor, Dataset
        Destino, Proceso Aecor, Ejecucion Aecorsoft]
    field: bitacora_extractores_log.tipo_extractor
  - name: Ejecucion Aecorsoft
    title: Ejecucion Aecorsoft
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: monitor_de_extractores_pr
    explore: bitacora_monitor_log
    listens_to_filters: [Fecha Ejecucion Monitor, Hora Ejecución Monitor, Dataset
        Destino, Proceso Aecor, Tipo Extractor]
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
    model: monitor_de_extractores_pr
    explore: bitacora_monitor_log
    listens_to_filters: []
    field: bitacora_extractores_log.fecha_ejecucion_monitor_date
