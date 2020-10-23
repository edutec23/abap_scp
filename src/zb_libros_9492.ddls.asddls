@AbapCatalog.sqlViewName: 'ZV_LIBROS_9492'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Detalle libros'
define view ZB_LIBROS_9492
  as select from ztb_libros_9492
{
  key id_libro  as ID,
  key bi_categ  as Categoria,
      titulo    as Titulo,
      autor     as Autor,
      editorial as Editorial,
      case
      when idioma = 'E' then 'Inglés'
      when idioma = 'S' then 'Español'
      else ''
      end       as Idioma,
      paginas   as Paginas,
      @Semantics.amount.currencyCode : 'Moneda'
      precio    as precio,
      moneda    as Moneda,
      formato   as Formato,
      url       as Url
}
