@AbapCatalog.sqlViewName: 'ZV_CATEG_9492'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorías'
define view zb_categ_9492
  as select from ztb_catego_9492
{
  key bi_categ    as Categoria,
      descripcion as Descripcion
}
