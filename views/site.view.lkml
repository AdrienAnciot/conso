view: site {
  sql_table_name: `poc-data-skazy.Conso.site` ;;

  dimension: site_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SiteId ;;
  }
  dimension: commune {
    type: string
    sql: ${TABLE}.Commune ;;
  }
  dimension: province {
    type: string
    sql: ${TABLE}.Province ;;
  }
  dimension: province_commune {
    type: string
    sql: conact(${province},${commune}) ;;
  }

}
