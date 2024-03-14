view: consos {
    sql_table_name: Conso.consos ;;
    #drill_fields: [article]

    dimension: site {
      #primary_key: yes
      type: string
      sql: ${TABLE}.site ;;
    }
  }
