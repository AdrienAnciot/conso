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

  dimension: annee_mois {
    type: string
    sql: concat(extract(year from ${date}),"-",if(extract(month from ${date})<10,"0",""),extract(month from ${date})) ;;
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
