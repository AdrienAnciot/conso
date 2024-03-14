view: consos {
    sql_table_name: Gescom.consos ;;
    #drill_fields: [article]

    dimension: site {
      #primary_key: yes
      type: string
      sql: ${TABLE}.site ;;
    }
  }
