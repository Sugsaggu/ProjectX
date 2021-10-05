@EndUserText.label: 'Fiori - Retailers'
@Search.searchable: true
@Metadata.allowExtensions: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZPV_RETAILERS
  provider contract transactional_query
  as projection on ZCDS_RETAILERS
{
      @Consumption.valueHelpDefinition: [{ entity : {name: 'ZPV_RETAILERS', element: 'Retailerid'  } }]
      @Search.defaultSearchElement: true
      @EndUserText.label : 'Retailer ID'
  key ZCDS_RETAILERS.Retailerid as Retailerid,

      @Consumption.valueHelpDefinition: [{ entity : {name: 'I_Country', element: 'Country'  } }]
      @ObjectModel.text.element: ['Land1']
      @Search.defaultSearchElement: true
      ZCDS_RETAILERS.Land1      as Land1,
      @EndUserText.label : 'Name'
      ZCDS_RETAILERS.Name1      as Name1,
      @EndUserText.label : 'Fax'
      ZCDS_RETAILERS.Fax,
      @EndUserText.label : 'Email'
      ZCDS_RETAILERS.Email,
      @EndUserText.label : 'Street'
      ZCDS_RETAILERS.Street

}
