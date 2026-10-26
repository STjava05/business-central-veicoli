page 50110 "Veicolo List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Veicolo;
    Caption = 'Veicoli';
    Editable = false;
    CardPageId = "Veicolo Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Nr."; Rec."Nr.")
                {
                    ApplicationArea = All;
                }
                field(Marca; Rec.Marca)
                {
                    ApplicationArea = All;
                }
                field(Modello; Rec.Modello)
                {
                    ApplicationArea = All;
                }
                field(Targa; Rec.Targa)
                {
                    ApplicationArea = All;
                }
                field(Stato; Rec.Stato)
                {
                    ApplicationArea = All;
                }
                field("Nr. cliente"; Rec."Nr. cliente")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}