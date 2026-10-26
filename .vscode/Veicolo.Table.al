table 50110 Veicolo
{
    DataClassification = CustomerContent;
    Caption = 'Veicolo';
    DrillDownPageId = "Veicolo List";
    LookupPageId = "Veicolo List";

    fields
    {
        field(1; "Nr."; Code[20])
        {
            Caption = 'Nr.';
        }
        field(2; Marca; Text[30])
        {
            Caption = 'Marca';
        }
        field(3; Modello; Text[30])
        {
            Caption = 'Modello';
        }
        field(4; Targa; Code[10])
        {
            Caption = 'Targa';
        }
        field(5; "Data acquisto"; Date)
        {
            Caption = 'Data acquisto';
        }
        field(6; Chilometraggio; Integer)
        {
            Caption = 'Chilometraggio';
        }
        field(7; Stato; Enum "Stato Veicolo")
        {
            Caption = 'Stato';
        }
        field(8; "Nr. cliente"; Code[20])
        {
            Caption = 'Nr. cliente';
            TableRelation = Customer."No.";
        }
    }

    keys
    {
        key(PK; "Nr.")
        {
            Clustered = true;
        }
        key(Targa; Targa)
        {
        }
    }
    trigger OnInsert()
    var
        SetupVeicoli: Record "Setup Veicoli";
        NoSeries: Codeunit "No. Series";
    begin
        if "Nr." = '' then begin
            if not SetupVeicoli.FindFirst() then
                Error('Configurare la pagina Setup Veicoli prima di creare veicoli.');
            "Nr." := NoSeries.GetNextNo(SetupVeicoli."Nr. serie veicoli");
        end;
    end;
}