using ProcessorService as service from '../../srv/processor-service';
annotate service.Pokemons with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>PokedexId}x Id',
                Value : numero,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Type',
                Value : tipo1,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Type2}',
                Value : tipo2,
                ![@UI.Hidden],
            },
            {
                $Type : 'UI.DataField',
                Value : altura,
                Label : '{i18n>Altura}(m)',
            },
            {
                $Type : 'UI.DataField',
                Value : peso,
                Label : '{i18n>Peso}(Kg)',
            },
            {
                $Type : 'UI.DataField',
                Value : descripcion,
                Label : '{i18n>Descripcin}',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Info',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Habilidades}',
            ID : 'i18nHabilidades',
            Target : 'habilidades/@UI.LineItem#i18nHabilidades',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Nmero}',
            Value : numero,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Nombre}',
            Value : nombre,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Tipo}',
            Value : tipo1,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Tipo2}',
            Value : tipo2,
        },
    ],
);

annotate service.Pokemons with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : nombre,
        },
        TypeName : '',
        TypeNamePlural : '',
        ImageUrl : image,
    }
);
annotate service.PkHb with @(
    UI.LineItem #i18nHabilidades : [
        {
            $Type : 'UI.DataField',
            Value : habilidad.ID,
            Label : '{i18n>Id}',
        },
        {
            $Type : 'UI.DataField',
            Value : habilidad.nombre,
            Label : '{i18n>Nombre}',
        },
        {
            $Type : 'UI.DataField',
            Value : habilidad.descripcion,
            Label : '{i18n>Descripcin}',
        },]
);
annotate service.Pokemons with @(
    UI.FieldGroup #Descripcin : {
        $Type : 'UI.FieldGroupType',
        Data : [],
    }
);
