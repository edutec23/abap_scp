CLASS zcl_delete_table_9492 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_delete_table_9492 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DELETE FROM ztb_catego_9492.
    IF sy-subrc EQ 0.
      out->write( 'All data deleted' ).
    ENDIF.
  ENDMETHOD.

ENDCLASS.
