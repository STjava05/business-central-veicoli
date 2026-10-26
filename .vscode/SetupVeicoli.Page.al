page 50120 "Setup Veicoli"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Setup Veicoli";
    Caption = 'Setup Veicoli';

    layout
    {
        area(content)
        {
            group(Generale)
            {
                field("Chiave primaria"; Rec."Chiave primaria")
                {
                    ApplicationArea = All;
                }
                field("Nr. serie veicoli"; Rec."Nr. serie veicoli")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}