namespace products;
using { cuid, Currency } from '@sap/cds/common';

@assert.unique: { name: [name] }
entity Products : cuid {
  name: String(100) @mandatory;
  description: String(500);
  price: Decimal(10,2);
  Currency: Currency;
}

@assert.unique: { name: [name] }
entity Services : cuid {
  name: String(100) @mandatory;
  description: String(500);
  hourlyRate: Decimal(10,2);
  Currency: Currency;
}

