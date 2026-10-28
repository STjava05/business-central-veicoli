tableextension 50101 "Customer Ext" extends Customer
{
    fields
    {
        field(50100; "Segmento Cliente"; Enum "Segmento Cliente")
        {
            Caption = 'Segmento Cliente';
            DataClassification = CustomerContent;
        }
        field(50101; "Nr. veicoli"; Integer)
        {
            Caption = 'Nr. veicoli';
            FieldClass = FlowField;
            CalcFormula = count(Veicolo where("Nr. cliente" = field("No.")));
            Editable = false;
        }
    }
}