codeunit 50100 "Segmento Mgt"
{
    procedure ClassificaTuttiClienti()
    var
        Customer: Record Customer;
        Conteggio: Integer;
    begin
        Conteggio := 0;

        if Customer.FindSet() then
            repeat
                // "Sales (LCY)" est un FlowField : il faut le calculer
                Customer.CalcFields("Sales (LCY)");

                if Customer."Sales (LCY)" > 10000 then
                    Customer."Segmento Cliente" := Customer."Segmento Cliente"::Premium
                else
                    if Customer."Sales (LCY)" > 0 then
                        Customer."Segmento Cliente" := Customer."Segmento Cliente"::Standard
                    else
                        Customer."Segmento Cliente" := Customer."Segmento Cliente"::Prospettivo;

                Customer.Modify();
                Conteggio += 1;

            until Customer.Next() = 0;

        Message('%1 clienti classificati!', Conteggio);
    end;
}