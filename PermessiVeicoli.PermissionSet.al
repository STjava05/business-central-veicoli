permissionset 50120 "Veicoli Admin"
{
    Caption = 'Veicoli Admin';
    Assignable = true;

    Permissions = tabledata Veicolo = RIMD,
                  tabledata "Setup Veicoli" = RIMD,
                  tabledata Customer = R,
                  table Veicolo = X,
                  table "Setup Veicoli" = X,
                  table Customer = X,
                  page "Veicolo List" = X,
                  page "Veicolo Card" = X,
                  page "Setup Veicoli" = X,
                  codeunit "Segmento Mgt" = X,
                  codeunit "Veicolo Events" = X;
}