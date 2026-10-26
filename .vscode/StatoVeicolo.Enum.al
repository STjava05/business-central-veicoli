enum 50110 "Stato Veicolo"
{
    Extensible = true;
    Caption = 'Stato Veicolo';

    value(0; Disponibile) { Caption = 'Disponibile'; }
    value(1; "In manutenzione") { Caption = 'In manutenzione'; }
    value(2; Assegnato) { Caption = 'Assegnato'; }
    value(3; Venduto) { Caption = 'Venduto'; }
}