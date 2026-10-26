table 50120 "Setup Veicoli"
{
    DataClassification = CustomerContent;
    Caption = 'Setup Veicoli';

    fields
    {
        field(1; "Chiave primaria"; Code[10])
        {
            Caption = 'Chiave primaria';
        }
        field(2; "Nr. serie veicoli"; Code[20])
        {
            Caption = 'Nr. serie veicoli';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "Chiave primaria")
        {
            Clustered = true;
        }
    }
}