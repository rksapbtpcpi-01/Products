using { products as my } from '../db/schema.cds';

@path: '/service/products'
@requires: 'authenticated-user'
service productsSrv {
  @odata.draft.enabled
  entity Products as projection on my.Products;
  @odata.draft.enabled
  entity Services as projection on my.Services;
}