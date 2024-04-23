using from './service';

annotate CatalogService.GetCatalog with @(
    UI: {
        
        // Search bars
        Identification: [ {Value: text} ],
            // SelectionFields: [ title ], // Custom filter search fields

            // Header info  of the list (title of the list) and of the object page (when an item is clicked on the list os complaints and navigating)
            HeaderInfo: {
                TypeName: '{i18n>Incident}',
                TypeNamePlural: '{i18n>Incidents}',

                ImageUrl : '../dollarcity.png',

                @title: '{i18n>Incident}',
                Title: {
                    Value: text
                },

                @description: '{i18n>Country}',
                Description: {
                    Value: country.descr,
                    Label: '{i18n>Language}'
                }
            },

            // List of items of the Complaint entity service
        LineItem: [
            {
                Value: ID
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
    },

        UI.Facets: [
            {
                $Type: 'UI.ReferenceFacet',
                Label: '{i18n>CategoryFacetGroup}',
                Target: '@UI.FieldGroup#CategoryHeader'
            }, 
            {
                $Type: 'UI.ReferenceFacet',
                Label: '{i18n>ToTemplatesFacetGroup}',
                Target: 'to_templates/@UI.LineItem',
                @title: '{i18n>Templates}',
                @description: '{i18n>Template}'
            }  
        ],

        UI.FieldGroup#CategoryHeader: {
            Data: [                
                {
                    Label: '{i18n>Incident}',
                    Value: ID
                },
                {
                    Label: '{i18n>IncentTitle}',
                    Value: text
                },
                {
                    Label: '{i18n>Country}',
                    Value: country.name
                },
                {
                    Label: '{i18n>Language}',
                    Value: language.name
                }
            ]
        }
);

annotate CatalogService.GetTemplate with @(
    UI: {
            // Search bars
            // SelectionFields: [ ], // No custom filter search fields

            // Header info  of the list (title of the list) and of the object page (when an item is clicked on the list os complaints and navigating)
            HeaderInfo: {
                TypeName: '{i18n>Template}',
                TypeNamePlural: '{i18n>Templates}',

                ImageUrl : '../dollarcity.png',

                @title: '{i18n>IncentTitle}',
                Title: {
                    Value: text,
                    Label: '{i18n>IncentTitle}'
                },

                @description: '{i18n>ResolutionId}',
                Description: {
                    Value: ID
                    , Label: '{i18n>ComplaintId}'
                },

                ![@UI.Importance] : #High,
            },

            // List of items of the Complaint entity service
            
            LineItem: [
                {
                    Label: '{i18n>Incident}',
                    Value: ID
                },
                {
                    Label: '{i18n>IncentTitle}',
                    Value: text
                }
            ]
    },

        UI.Facets: [
            {
                $Type: 'UI.ReferenceFacet',
                Label:  text, // '{i18n>TemplateFacetGroup}',
                Target: '@UI.FieldGroup#TemplateHeader'
            }
        ],

        UI.FieldGroup#TemplateHeader: {
            Data: [                
                {
                    Label: '{i18n>Incident}',
                    Value: ID
                },
                {
                    Label: '{i18n>IncentTitle}',
                    Value: text
                },
                {
                    Label: 'Extra Info',
                    Value: 'Field 1 for extra info'
                },
                {
                    Label: 'More Info',
                    Value: 'Field 2 for more info'
                }
            ]
        }
);
