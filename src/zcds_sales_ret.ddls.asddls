@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Fiori - Sales'
define root view entity zcds_sales_ret
  as select from zapo_sales
{
      @EndUserText.label : 'Retailer ID'
  key retailerid   as Retailerid,
      @EndUserText.label : 'SKU'
  key sku          as Sku,
      @EndUserText.label : 'Sales Date'
  key salesdate    as SalesDate,
      @EndUserText.label : 'Description'
      description  as Description,
      @EndUserText.label : 'Theme'
      theme        as Theme,
      @EndUserText.label : 'Quantity'
      quantity     as Quantity,
      @EndUserText.label : 'QuantityUnit'
      quantityunit as QuantityUnit
}
