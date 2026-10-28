codeunit 50120 "Veicolo Events"
{
    [EventSubscriber(ObjectType::Table, Database::Veicolo, 'OnAfterInsertEvent', '', false, false)]
    local procedure OnAfterInsertVeicolo(var Rec: Record Veicolo)
    begin
        Message('Nuovo veicolo creato: %1 %2 %3', Rec."Nr.", Rec.Marca, Rec.Modello);
    end;
}