using from './service';

annotate CatalogService.GetCatalog with @(
    UI: {
        
        // Search bars
        Identification: [ {Value: text} ],
        
        SelectionFields: [ text],
        
        LineItem: [
            {
                Value: id
            },
            {
                Value: text,
                Label: '{i18n>IncentTitle}'
            },
            {
                Value: country.name,
                Label: '{i18n>CountryTitle}' 
            },
            {
                Value: language.name,
                Label: '{i18n>LanguageTitle}'
            }
        ]
    }
);
