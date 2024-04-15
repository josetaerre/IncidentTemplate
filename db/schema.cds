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
    to_templates: Association to many Template on to_templates.to_category = $self;
    // to_templates: Composition of many Template on to_templates.to_category = $self;
}

entity Template: managed {
    key id: Identifier;
    text: String;
    to_category: Association to Category;
    // to_selectable: Association to many Selectable on to_selectable.to_template = $self;
    to_selectable: Composition of many Selectable on to_selectable.to_template = $self;
}

entity Selectable: managed, cuid {
    text: String;
    to_template: Association to one Template
}