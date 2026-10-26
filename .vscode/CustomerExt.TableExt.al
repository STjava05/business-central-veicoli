tableextension 50101 "Customer Ext" extends Customer
{
    fields
    {
        field(50100; "Segmento Cliente"; Enum "Segmento Cliente")
        {
            Caption = 'Segmento Cliente';
            DataClassification = CustomerContent;
        }
    }
}