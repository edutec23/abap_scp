@AbapCatalog.sqlViewName: 'ZV_VENTAS_9492'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Ventas'
define view ZB_VENTAS_9492
  as select from ztb_clnts_lib_92
{

  key id_libro                    as ID_Libro,
      count( distinct id_cliente) as Vendidos

}

group by
  id_libro
