query 50110 "Veicoli per cliente"
{
    QueryType = Normal;
    Caption = 'Veicoli per cliente';

    elements
    {
        dataitem(Customer; Customer)
        {
            column(NrCliente; "No.")
            {
                Caption = 'Nr. cliente';
            }
            column(NomeCliente; Name)
            {
                Caption = 'Nome cliente';
            }
            dataitem(Veicolo; Veicolo)
            {
                DataItemLink = "Nr. cliente" = Customer."No.";
                SqlJoinType = InnerJoin;

                column(NrVeicolo; "Nr.")
                {
                    Caption = 'Nr. veicolo';
                }
                column(Marca; Marca)
                {
                    Caption = 'Marca';
                }
                column(Modello; Modello)
                {
                    Caption = 'Modello';
                }
                column(Stato; Stato)
                {
                    Caption = 'Stato';
                }
            }
        }
    }
}