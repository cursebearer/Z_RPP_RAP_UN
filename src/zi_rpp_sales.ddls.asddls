@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Composit'
@Metadata.ignorePropagatedAnnotations: true

define root view entity ZI_RPP_SALES
  as select from ZR_RPP_SALES

{
  key Orderid,
      Customer,
      Vendor,
      Company
}
