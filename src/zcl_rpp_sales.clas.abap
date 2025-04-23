CLASS zcl_rpp_sales DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA: go_instance TYPE REF TO zcl_rpp_sales,
                gt_sales    TYPE TABLE OF ztrpp_sales_un,
                gr_orderid_delete type range of ztrpp_sales_un-orderid.

    CLASS-METHODS get_instance RETURNING VALUE(ro_instance) TYPE REF TO zcl_rpp_sales.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rpp_sales IMPLEMENTATION.
  METHOD get_instance.

    go_instance = ro_instance = COND #(
      WHEN go_instance IS BOUND THEN go_instance
      ELSE NEW #(  )
    ).

  ENDMETHOD.

ENDCLASS.
