connection: "looker_first_connection"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: retail_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: retail_demo_default_datagroup

explore: events {
    join: events__page_categories {
      view_label: "Events: Pagecategories"
      sql: LEFT JOIN UNNEST(${events.page_categories}) as events__page_categories ;;
      relationship: one_to_many
    }
    join: events__product_details {
      view_label: "Events: Productdetails"
      sql: LEFT JOIN UNNEST(${events.product_details}) as events__product_details ;;
      relationship: one_to_many
    }
}

explore: events_some_invalid {
    join: events_some_invalid__page_categories {
      view_label: "Events Some Invalid: Pagecategories"
      sql: LEFT JOIN UNNEST(${events_some_invalid.page_categories}) as events_some_invalid__page_categories ;;
      relationship: one_to_many
    }
    join: events_some_invalid__product_details {
      view_label: "Events Some Invalid: Productdetails"
      sql: LEFT JOIN UNNEST(${events_some_invalid.product_details}) as events_some_invalid__product_details ;;
      relationship: one_to_many
    }
}

