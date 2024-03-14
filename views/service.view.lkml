view: service {
  sql_table_name: `poc-data-skazy.Conso.service` ;;

  dimension: service_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ServiceId ;;
  }
  dimension: service {
    type: string
    sql: ${TABLE}.Service ;;
  }

}
