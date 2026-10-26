page 50121 "Veicolo API"
{
    PageType = API;
    Caption = 'Veicoli API';
    APIPublisher = 'mbengue';
    APIGroup = 'fleet';
    APIVersion = 'v1.0';
    EntityName = 'veicolo';
    EntitySetName = 'veicoli';
    SourceTable = Veicolo;
    DelayedInsert = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'Id';
                }
                field(number; Rec."Nr.")
                {
                    Caption = 'Nr.';
                }
                field(marca; Rec.Marca)
                {
                    Caption = 'Marca';
                }
                field(modello; Rec.Modello)
                {
                    Caption = 'Modello';
                }
                field(targa; Rec.Targa)
                {
                    Caption = 'Targa';
                }
                field(stato; Rec.Stato)
                {
                    Caption = 'Stato';
                }
            }
        }
    }
}