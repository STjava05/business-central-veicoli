report 50110 "Liste Veicoli"
{
    Caption = 'Liste Veicoli';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = ExcelLayout;

    dataset
    {
        dataitem(Veicolo; Veicolo)
        {
            column(NrVeicolo; "Nr.")
            {
                Caption = 'Nr.';
            }
            column(Marca; Marca)
            {
                Caption = 'Marca';
            }
            column(Modello; Modello)
            {
                Caption = 'Modello';
            }
            column(Targa; Targa)
            {
                Caption = 'Targa';
            }
            column(Stato; Stato)
            {
                Caption = 'Stato';
            }
            column(DataAcquisto; "Data acquisto")
            {
                Caption = 'Data acquisto';
            }
            column(NrCliente; "Nr. cliente")
            {
                Caption = 'Nr. cliente';
            }
        }
    }

    rendering
    {
        layout(ExcelLayout)
        {
            Type = Excel;
            LayoutFile = 'ListeVeicoli.xlsx';
        }
    }
}