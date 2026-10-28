pageextension 50102 "Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addafter("Phone No.")
        {
            field("Segmento Cliente"; Rec."Segmento Cliente")
            {
                ApplicationArea = All;
            }
            field("Nr. veicoli"; Rec."Nr. veicoli")
            {
                ApplicationArea = All;
            }
        }



    }

}