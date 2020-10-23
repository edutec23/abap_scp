@AbapCatalog.sqlViewName: 'ZV_CLIENTES_9492'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
define view ZB_CLIENTES_9492
  as select from ztb_clientes_492
{

  key id_cliente  as ID_Cliente,
  key tipo_acceso as Tipo_Acceso,
      nombre      as Nombre,
      apellidos   as Apellidos,
      email       as Email,
      url         as URL

}
