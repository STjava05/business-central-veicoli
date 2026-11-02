codeunit 50130 "Veicoli Utils"
{
    // ⚠️ Obligatoire : le codeunit DOIT déclarer ses droits de lecture
    Permissions = tabledata Veicolo = R, tabledata Customer = R;

    procedure ContaVeicoli(): Integer
    var
        RecRef: RecordRef;
    begin
        RecRef.Open(Database::Veicolo);   // ouvre la table par son ID
        exit(RecRef.Count());             // compte ses enregistrements
    end;

    procedure DescriviTabella(TableId: Integer): Text
    var
        RecRef: RecordRef;
    begin
        RecRef.Open(TableId);
        exit(StrSubstNo('Tabella %1 (%2): %3 record, %4 campi',
            RecRef.Number, RecRef.Name, RecRef.Count(), RecRef.FieldCount()));
    end;
}