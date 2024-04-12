namespace templates;


// using { sap } from '@sap/cds/common';
using { cuid } from '@sap/cds/common';
using { managed, Country, Language } from '@sap/cds/common';

 type Identifier: String(3);

entity Category: managed {
    key id: Identifier;
    text: String;
    country: Country;
    language: Language;
    templates: Association to many Template on templates.category = $self;
}

entity Template: managed {
    key id: Identifier;
    text: String;
    category: Association to one Category;
    selectable: Association to many Selectable on selectable.template = $self;
}

entity Selectable: managed, cuid {
    text: String;
    template: Association to Template
}