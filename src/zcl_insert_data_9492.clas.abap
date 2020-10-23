CLASS zcl_insert_data_9492 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_data_9492 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA: lt_catego    TYPE STANDARD TABLE OF ztb_catego_9492,
          lt_acc_categ TYPE STANDARD TABLE OF ztb_acc_categ_92,
          lt_clientes  TYPE STANDARD TABLE OF ztb_clientes_492,
          lt_libros    TYPE STANDARD TABLE OF ztb_libros_9492,
          lt_clnts_lib TYPE STANDARD TABLE OF ztb_clnts_lib_92.

    lt_catego = VALUE #( ( bi_categ = 'G' descripcion = 'Generalidades'  )
                         ( bi_categ = 'F' descripcion = 'Filosofía y Psicología' )
                         ( bi_categ = 'R' descripcion = 'Religión'  )
                         ( bi_categ = 'C' descripcion = 'Ciencias Sociales'  )
                         ( bi_categ = 'L' descripcion = 'Literatura'  )
                         ( bi_categ = 'M' descripcion = 'Matemáticas'  )
                         ( bi_categ = 'A' descripcion = 'Artes'  )
                         ( bi_categ = 'H' descripcion = 'Historia y geografía'  )
                         ( bi_categ = 'X' descripcion = 'Contenido para Adultos'  )
                          ).

    DELETE FROM ztb_catego_9492.
    INSERT ztb_catego_9492 FROM TABLE @lt_catego.

    SELECT * FROM ztb_catego_9492 INTO TABLE @lt_catego.
    out->write( sy-dbcnt ).
    out->write( 'ZTB_CATEGO_9492 data inserted successfully!' ).

    lt_acc_categ = VALUE #( ( bi_categ = 'M' tipo_acceso = 'N'  )
                            ( bi_categ = 'R' tipo_acceso = 'N'  )
                            ( bi_categ = 'H' tipo_acceso = 'J'  )
                            ( bi_categ = 'L' tipo_acceso = 'J'  )
                            ( bi_categ = 'C' tipo_acceso = 'J'  )
                            ( bi_categ = 'M' tipo_acceso = 'J'  )
                            ( bi_categ = 'F' tipo_acceso = 'A'  )
                            ( bi_categ = 'G' tipo_acceso = 'A'  )
                            ( bi_categ = 'A' tipo_acceso = 'A'  )
                            ( bi_categ = 'X' tipo_acceso = 'A'  )
                          ).

    DELETE FROM ztb_acc_categ_92.
    INSERT ztb_acc_categ_92 FROM TABLE @lt_acc_categ.

    SELECT * FROM ztb_acc_categ_92 INTO TABLE @lt_acc_categ.
    out->write( sy-dbcnt ).
    out->write( 'ZTB_ACC_CATEG_92 data inserted successfully!' ).


    lt_clientes = VALUE #( ( id_cliente = '10000000123' tipo_acceso = 'N' nombre = 'Javier' apellidos = 'Tristan Rosales'
                             email = 'javier.tristan@gmail.com' url = 'https://www.facebook.com/photo/?fbid=2854151758dshdye655thf88f99f'  )
                           ( id_cliente = '10000000124' tipo_acceso = 'J' nombre = 'Eduardo' apellidos = 'Lino Rosales'
                             email = 'eduardo.lino@gmail.com' url = 'https://www.facebook.com/photo/?fbid=28541513rfr5g5334'  )
                           ( id_cliente = '10000000125' tipo_acceso = 'A' nombre = 'Anllela' apellidos = 'Moreno Oyola'
                             email = 'anllela.oyola@gmail.com' url = 'https://www.facebook.com/photo/?fbid=jfurjf8r8uf8r'  )
                           ( id_cliente = '10000000126' tipo_acceso = 'J' nombre = 'Juan' apellidos = 'Garcia Garcia'
                             email = 'juan.garcia@gmail.com' url = 'https://www.facebook.com/photo/?fbid=jfdjdmnf7fikddddd'  )
                           ( id_cliente = '10000000127' tipo_acceso = 'A' nombre = 'Carlos' apellidos = 'Rondon Yepas'
                             email = 'carlos.rondon@gmail.com' url = 'https://www.facebook.com/photo/?fbid=jfdjdmnf7fikddddf'  )
                           ( id_cliente = '10000000128' tipo_acceso = 'A' nombre = 'Flora' apellidos = 'Gonzales Mirada'
                             email = 'flora.gonzales@gmail.com' url = 'https://www.facebook.com/photo/?fbid=jfdjdmnf7fikdsnsjd789'  )
                           ( id_cliente = '10000000129' tipo_acceso = 'J' nombre = 'Fabiola' apellidos = 'Macalopu Rodriguez'
                             email = 'fabiola.eva@gmail.com' url = 'https://www.facebook.com/photo/?fbid=jfdjdmnf7fiksgbc6c677'  )
                           ( id_cliente = '10000000130' tipo_acceso = 'N' nombre = 'Hernan' apellidos = 'Peralta Luz'
                             email = 'hernan.peralta@gmail.com' url = 'https://www.facebook.com/photo/?fbid=jfdjdmnf7fikdjhs6'  )
                           ( id_cliente = '10000000131' tipo_acceso = 'J' nombre = 'Gerson' apellidos = 'Yupanqui Mendoza'
                             email = 'gerson.yupanqui@gmail.com' url = 'https://www.facebook.com/photo/?fbid=jfdjdmnf7fikdd11154'  )
                           ( id_cliente = '10000000132' tipo_acceso = 'J' nombre = 'Gustavo' apellidos = 'Beingolea Lopez'
                             email = 'gustavo.beingolea@gmail.com' url = 'https://www.facebook.com/photo/?fbid=jfdjdmnf7fikdddkjhf'  )
                           ( id_cliente = '10000000133' tipo_acceso = 'N' nombre = 'Georgina' apellidos = 'Cornejo Rosales'
                             email = 'geo.rosales@gmail.com' url = 'https://www.facebook.com/photo/?fbid=jfdjdmnf7fikdd898766'  )
                           ( id_cliente = '10000000134' tipo_acceso = 'J' nombre = 'Kevin' apellidos = 'Rosales Guevara'
                             email = 'kevin.guevara@gmail.com' url = 'https://www.facebook.com/photo/?fbid=jfdjdmnf7fikddkdmcn78s'  )
                           ( id_cliente = '10000000135' tipo_acceso = 'A' nombre = 'Luis' apellidos = 'Garras Tristan'
                             email = 'luis.garras@gmail.com' url = 'https://www.facebook.com/photo/?fbid=jfdjdmnf7fikddddsdhdg6'  )
                          ).

    DELETE FROM ztb_clientes_492.
    INSERT ztb_clientes_492 FROM TABLE @lt_clientes.

    SELECT * FROM ztb_clientes_492 INTO TABLE @lt_clientes.
    out->write( sy-dbcnt ).
    out->write( 'ZTB_CLIENTES_492 data inserted successfully!' ).


     lt_libros = VALUE #( ( id_libro = '500001' bi_categ = 'M' titulo = 'Matematicas 1' autor = 'Baldor' editorial = 'Matematics Editorial' idioma = 'S'
                            paginas = 200 precio = 500  moneda = 'PEN' formato = '' url = '' )
                          ( id_libro = '500002' bi_categ = 'R' titulo = 'Genesis y Apocalipsis' autor = 'Jose Jose' editorial = 'ESN N2' idioma = 'S'
                            paginas = 250 precio = 250  moneda = 'PEN' formato = '' url = '' )
                          ( id_libro = '500003' bi_categ = 'H' titulo = 'Guerra Mundial 2' autor = 'Luis Miguel' editorial = 'ESN N3' idioma = 'S'
                            paginas = 300 precio = 150  moneda = 'PEN' formato = '' url = '' )
                          ( id_libro = '500004' bi_categ = 'L' titulo = 'El quijote de la Mancha' autor = 'Saavedra' editorial = 'ESN N234' idioma = 'S'
                            paginas = 350 precio = 175  moneda = 'PEN' formato = '' url = '' )
                          ( id_libro = '500005' bi_categ = 'C' titulo = 'Ciencias Soc' autor = 'Juan Bau' editorial = 'ESPPN 34' idioma = 'E'
                            paginas = 400 precio = 75  moneda = 'USD' formato = '' url = '' )
                          ( id_libro = '500006' bi_categ = 'M' titulo = 'Matematica 2' autor = 'Anonimo' editorial = 'Lumbreras' idioma = 'E'
                            paginas = 350 precio = 150  moneda = 'USD' formato = '' url = '' )
                          ( id_libro = '500007' bi_categ = 'F' titulo = 'Zonas erroneas' autor = 'Anonimo' editorial = 'Dummies' idioma = 'S'
                            paginas = 300 precio = 150  moneda = 'PEN' formato = '' url = '' )
                          ( id_libro = '500008' bi_categ = 'G' titulo = 'Amazonia' autor = 'Perez Cuellas' editorial = 'Amazonics' idioma = 'S'
                            paginas = 350 precio = 120  moneda = 'PEN' formato = '' url = '' )
                          ( id_libro = '500009' bi_categ = 'A' titulo = 'Cappila Sixtina' autor = 'Piccaso' editorial = 'Artes Mix' idioma = 'S'
                            paginas = 200 precio = 125  moneda = 'PEN' formato = '' url = '' )
                          ( id_libro = '500010' bi_categ = 'X' titulo = 'Conejitas Play' autor = 'Anonimo' editorial = 'ESN X' idioma = 'E'
                            paginas = 250 precio = 130  moneda = 'USD' formato = '' url = '' )
                          ( id_libro = '500011' bi_categ = 'F' titulo = 'Pienso Luego existe' autor = 'Anonimo' editorial = 'Socrates books' idioma = 'S'
                            paginas = 350 precio = 125  moneda = 'PEN' formato = '' url = '' )
                          ).

    DELETE FROM ztb_libros_9492.
    INSERT ztb_libros_9492 FROM TABLE @lt_libros.

    SELECT * FROM ztb_libros_9492 INTO TABLE @lt_libros.
    out->write( sy-dbcnt ).
    out->write( 'ZTB_LIBROS_9492 data inserted successfully!' ).


    lt_clnts_lib = VALUE #( ( id_cliente = '10000000123' id_libro = '500001'  )
                            ( id_cliente = '10000000123' id_libro = '500002'  )
                            ( id_cliente = '10000000124' id_libro = '500010'  )
                            ( id_cliente = '10000000124' id_libro = '500007'  )
                            ( id_cliente = '10000000124' id_libro = '500009'  )
                            ( id_cliente = '10000000135' id_libro = '500003'  )
                            ( id_cliente = '10000000135' id_libro = '500004'  )
                            ( id_cliente = '10000000135' id_libro = '500005'  )
                            ( id_cliente = '10000000135' id_libro = '500006'  )
                            ( id_cliente = '10000000132' id_libro = '500005'  )
                            ( id_cliente = '10000000132' id_libro = '500006'  )
                            ( id_cliente = '10000000127' id_libro = '500010'  )
                            ( id_cliente = '10000000128' id_libro = '500008'  )
                            ( id_cliente = '10000000128' id_libro = '500009'  )
                          ).

    DELETE FROM ztb_clnts_lib_92.
    INSERT ztb_clnts_lib_92 FROM TABLE @lt_clnts_lib.

    SELECT * FROM ztb_clnts_lib_92 INTO TABLE @lt_clnts_lib.
    out->write( sy-dbcnt ).
    out->write( 'ZTB_CLNTS_LIB_92 data inserted successfully!' ).

  ENDMETHOD.
ENDCLASS.
