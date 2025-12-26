using { productsSrv } from '../srv/service.cds';

annotate productsSrv.Products with @UI.HeaderInfo: { TypeName: 'Product', TypeNamePlural: 'Products', Title: { Value: name } };
annotate productsSrv.Products with {
  ID @UI.Hidden @Common.Text: { $value: name, ![@UI.TextArrangement]: #TextOnly }
};
annotate productsSrv.Products with @UI.Identification: [{ Value: name }];
annotate productsSrv.Products with {
  description @title: 'Description';
  price @title: 'Price'
};

annotate productsSrv.Products with {
  price @Measures.ISOCurrency: Currency_code
};

annotate productsSrv.Products with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: description },
 { $Type: 'UI.DataField', Value: price }
];

annotate productsSrv.Products with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: description },
 { $Type: 'UI.DataField', Value: price }
  ]
};

annotate productsSrv.Products with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate productsSrv.Products with @UI.SelectionFields: [
  name
];

annotate productsSrv.Services with @UI.HeaderInfo: { TypeName: 'Service', TypeNamePlural: 'Services', Title: { Value: name } };
annotate productsSrv.Services with {
  ID @UI.Hidden @Common.Text: { $value: name, ![@UI.TextArrangement]: #TextOnly }
};
annotate productsSrv.Services with @UI.Identification: [{ Value: name }];
annotate productsSrv.Services with {
  description @title: 'Description';
  hourlyRate @title: 'Hourly Rate'
};

annotate productsSrv.Services with {
  hourlyRate @Measures.ISOCurrency: Currency_code
};

annotate productsSrv.Services with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: description },
 { $Type: 'UI.DataField', Value: hourlyRate }
];

annotate productsSrv.Services with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: description },
 { $Type: 'UI.DataField', Value: hourlyRate }
  ]
};

annotate productsSrv.Services with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate productsSrv.Services with @UI.SelectionFields: [
  name
];

