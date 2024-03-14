view: consos {
    sql_table_name: Conso.consos ;;

  dimension: site {
      type: number
      sql: ${TABLE}.site ;;
    }

  dimension: service {
    type: number
    sql: ${TABLE}.service ;;
  }

  dimension: compte {
    type: number
    sql: ${TABLE}.compte ;;
  }

  dimension: date {
    type: date
    sql: ${TABLE}.date ;;
  }

  dimension: montant {
    type: number
    sql: ${TABLE}.montant ;;
  }

  measure: montant_total{
    type: sum
    sql: ${montant} ;;
  }

}
