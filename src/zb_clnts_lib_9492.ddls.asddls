@AbapCatalog.sqlViewName: 'ZV_CLNTS_L_9492'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Relacion Clientes y Libros'
@Metadata.allowExtensions: true
define view zb_clnts_lib_9492
  as select from ztb_clnts_lib_92 as ClientesLib
    inner join ZB_CLIENTES_9492 as _Clientes on ClientesLib.id_cliente = _Clientes.ID_Cliente
{

  key ClientesLib.id_cliente as ID_Cliente,
  key id_libro               as ID_libro,
  key _Clientes.Tipo_Acceso  as Tipo_Acceso,
      _Clientes.Nombre       as Nombre,
      _Clientes.Apellidos    as Apellidos,
      _Clientes.Email        as Email,
      _Clientes.URL          as URL

}
