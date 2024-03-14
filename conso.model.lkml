connection: "conso"

include: "/views/*.view.lkml"

explore: consos {

  join: compte {
    type:  left_outer
    sql_on: ${compte.poste_id} = ${consos.compte} ;;
    relationship: many_to_one
  }

  join: service {
    type:  left_outer
    sql_on: ${service.service_id} = ${consos.service} ;;
    relationship: many_to_one
  }

  join: site {
    type:  left_outer
    sql_on: ${site.site_id} = ${consos.site} ;;
    relationship: many_to_one
  }

}

explore: compte {}

explore: service {}

explore: site {}
