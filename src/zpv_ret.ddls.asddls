@EndUserText.label: 'Fiori - Retailers'
@Search.searchable: true
@Metadata.allowExtensions: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZPV_RET
  provider contract transactional_query
  as projection on ZCDS_RET
{
      @Consumption.valueHelpDefinition: [{ entity : {name: 'ZCDS_RET', element: 'Retailerid'  } }]
      @EndUserText.label : 'Retailer ID'
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold : 0.8
      @Search.ranking : #HIGH
  key Retailerid,
      @Consumption.valueHelpDefinition: [{ entity : {name: 'ZCDS_RET', element: 'Sku'  } }]
      @EndUserText.label : 'SKU'
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold : 0.8
      @Search.ranking : #HIGH
  key Sku,
      @Consumption.valueHelpDefinition: [{ entity : {name: 'ZCDS_RET', element: 'Description'  } }]
      @EndUserText.label : 'Description'
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold : 0.7
      @Search.ranking : #LOW
      Description,
      @Consumption.valueHelpDefinition: [{ entity : {name: 'ZCDS_RET', element: 'Theme'  } }]
      @EndUserText.label : 'Theme'
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold : 0.7
      @Search.ranking : #LOW
      Theme
}
