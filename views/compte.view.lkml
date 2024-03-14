view: compte {
  sql_table_name: `poc-data-skazy.Conso.compte` ;;

  dimension: poste {
    type: string
    sql: ${TABLE}.Poste ;;
  }
  dimension: poste_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.PosteId ;;
  }

}
