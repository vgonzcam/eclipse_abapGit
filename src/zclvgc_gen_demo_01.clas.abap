CLASS zclvgc_gen_demo_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zclvgc_gen_demo_01 IMPLEMENTATION.

 METHOD if_oo_adt_classrun~main.

   DATA:itab TYPE TABLE OF ztvgc_demo_01.

*   read current timestamp
   GET TIME STAMP FIELD DATA(zv_tsl).


*   fill internal travel table (itab)
   itab = VALUE #(
 ( partner = '0000000001' name_last = 'Last' name_first = 'First' bpkind = 'A' created_by = 'ADMIN' created_at = zv_tsl last_changed_by = ''  last_changed_at = '' ) ).

*   delete existing entries in the database table
   DELETE FROM ztvgc_demo_01.

*   insert the new table entries
   INSERT ztvgc_demo_01 FROM TABLE @itab.

*   check the result
   SELECT * FROM ztvgc_demo_01 INTO TABLE @itab.
   out->write( sy-dbcnt ).
   out->write( 'Travel data inserted successfully!').

 ENDMETHOD.

ENDCLASS.
