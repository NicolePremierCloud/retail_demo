view: events_some_invalid {
  sql_table_name: `user_events.events_some_invalid` ;;

  dimension: cart_id {
    type: string
    sql: ${TABLE}.cartId ;;
  }
  dimension: event_time {
    type: string
    sql: ${TABLE}.eventTime ;;
  }
  dimension: event_type {
    type: string
    sql: ${TABLE}.eventType ;;
  }
  dimension: page_categories {
    hidden: yes
    sql: ${TABLE}.pageCategories ;;
  }
  dimension: product_details {
    hidden: yes
    sql: ${TABLE}.productDetails ;;
  }
  dimension: purchase_transaction__currency_code {
    type: string
    sql: ${TABLE}.purchaseTransaction.currencyCode ;;
    group_label: "Purchase Transaction"
    group_item_label: "Currency Code"
  }
  dimension: purchase_transaction__revenue {
    type: number
    sql: ${TABLE}.purchaseTransaction.revenue ;;
    group_label: "Purchase Transaction"
    group_item_label: "Revenue"
  }
  dimension: search_query {
    type: string
    sql: ${TABLE}.searchQuery ;;
  }
  dimension: visitor_id {
    type: string
    sql: ${TABLE}.visitorId ;;
  }
  measure: count {
    type: count
  }
}

view: events_some_invalid__page_categories {

  dimension: events_some_invalid__page_categories {
    type: string
    sql: events_some_invalid__page_categories ;;
  }
}

view: events_some_invalid__product_details {

  dimension: events_some_invalid__product_details {
    type: string
    hidden: yes
    sql: events_some_invalid__product_details ;;
  }
  dimension: product__id {
    type: string
    sql: ${TABLE}.product.id ;;
    group_label: "Product"
    group_item_label: "ID"
  }
  dimension: quantity {
    type: number
    sql: quantity ;;
  }
}
