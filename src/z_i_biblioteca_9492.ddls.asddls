@AbapCatalog.sqlViewName: 'ZV_BIBLIOT_9492'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Biblioteca'
@Metadata.allowExtensions: true
define view z_i_biblioteca_9492
  as select from ZB_LIBROS_9492 as Libros
  association [1]    to zb_categ_9492     as _Categ          on Libros.Categoria = _Categ.Categoria
  association [0..1] to ZB_VENTAS_9492    as _Ventas         on Libros.ID = _Ventas.ID_Libro
  association [0..*] to zb_clnts_lib_9492 as _ClientesLibros on $projection.ID = _ClientesLibros.ID_libro
{

  key ID,
  key Categoria as Categoria,
      Titulo,
      Autor,
      Editorial,
      Idioma,
      Paginas,
      precio,
      Moneda,
      Formato,
      Url,
      case
      when _Ventas.Vendidos < 1 then 0
      when _Ventas.Vendidos = 1 then 1
      when _Ventas.Vendidos = 2 then 2
      when _Ventas.Vendidos > 2 then 3
      else 0
      end       as Ventas,
      case _Ventas.Vendidos
      when 0 then ''
      else ''
      end       as Text,
      _Categ,
      _ClientesLibros

}
