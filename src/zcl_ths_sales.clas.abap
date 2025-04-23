CLASS zcl_ths_sales DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA: go_instance TYPE REF TO zcl_ths_sales,
                gt_sales    TYPE TABLE OF ztths_sales.

    CLASS-METHODS get_instance RETURNING VALUE(ro_instance) TYPE REF TO zcl_ths_sales.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ths_sales IMPLEMENTATION.
  METHOD get_instance.
    go_instance = ro_instance = COND #(
        WHEN go_instance is BOUND THEN go_instance
        else NEW #( )
    ).
  ENDMETHOD.

ENDCLASS.
