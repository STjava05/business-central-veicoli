page 50111 "Veicolo Card"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = Veicolo;
    Caption = 'Scheda Veicolo';

    layout
    {
        area(content)
        {
            group(Generale)
            {
                Caption = 'Generale';

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
                field("Data acquisto"; Rec."Data acquisto")
                {
                    ApplicationArea = All;
                }
                field(Chilometraggio; Rec.Chilometraggio)
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