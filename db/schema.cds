namespace templates;


// using { sap } from '@sap/cds/common';
using { cuid } from '@sap/cds/common';
using { managed, Country, Language } from '@sap/cds/common';

 type Identifier: String(3);

 type AvailabilityStatus: Int16 enum {
  Available = 1;
  NotAvailable = 2;
};

entity Category: managed {
    key id: Identifier;
    text: String;
    status: AvailabilityStatus;
    validTo: Timestamp;
    country: Country;
    language: Language;
    // to_templates: Association to many Template on to_templates.to_category = $self;
    to_templates: Composition of many Template on to_templates.to_category = $self;

    // createdAt  : Timestamp @cds.on.insert: $now;
    // createdBy  : User      @cds.on.insert: $user;
    // modifiedAt : Timestamp @cds.on.insert: null  @cds.on.update: $now;
    // modifiedBy : User      @cds.on.insert: null @cds.on.update: $user;
}

entity Template: managed {
    key id: Identifier;
    text: String;
    status: AvailabilityStatus;
    validTo: Date;
    to_category: Association to Category;
    // to_selectable: Association to many Selectable on to_selectable.to_template = $self;
    to_selectable: Composition of many Selectable on to_selectable.to_template = $self;
}

entity Selectable: managed, cuid {
    text: String;
    to_template: Association to Template
}







entity E {
    key id: Integer; 
    Price: Integer; 
    Quantity: Integer; 
};

view V as select from E {
    Price * Quantity as PriceQuantity: Integer 
};

