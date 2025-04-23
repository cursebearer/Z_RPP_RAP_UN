@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales consume'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_RPP_SALES as projection on ZI_RPP_SALES
{
    key Orderid,
    Customer,
    Vendor,
    Company
}
