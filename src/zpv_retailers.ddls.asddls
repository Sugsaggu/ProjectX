@EndUserText.label: 'Fiori - Retailers'
@Search.searchable: true
@Metadata.allowExtensions: true
@AccessControl.authorizationCheck: #CHECK
define root view entity ZPV_RETAILERS
  provider contract transactional_query
  as projection on ZCDS_RETAILERS
  association [0..1] to I_Country as _country on $projection.Land1 = _country.Country
{
      @Consumption.valueHelpDefinition: [{ entity : {name: 'ZPV_RETAILERS', element: 'retailerid'  } }]

      @ObjectModel.text.element: ['retailerid']
      @Search.defaultSearchElement: true
      @EndUserText.label : 'Retailer ID'
  key ZCDS_RETAILERS.Retailerid as Retailerid,

      @Consumption.valueHelpDefinition: [{ entity : {name: 'I_Country', element: 'Country'  } }]

      @ObjectModel.text.element: ['land1']
      @Search.defaultSearchElement: true
      ZCDS_RETAILERS.Land1      as Land1,
      @EndUserText.label : 'Name'
      ZCDS_RETAILERS.Name1      as Name1,
      @EndUserText.label : 'Fax'
      ZCDS_RETAILERS.Fax,
      @EndUserText.label : 'Email'
      ZCDS_RETAILERS.Email,
      @EndUserText.label : 'Street'
      ZCDS_RETAILERS.Street,

      // Associations
      _country
}
