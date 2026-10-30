codeunit 50122 "Test Assert"
{
    procedure AreEqual(Expected: Variant; Actual: Variant; Message: Text)
    begin
        if Format(Expected) <> Format(Actual) then
            Error('%1 — atteso: %2, ottenuto: %3', Message, Expected, Actual);
    end;

    procedure AreNotEqual(Expected: Variant; Actual: Variant; Message: Text)
    begin
        if Format(Expected) = Format(Actual) then
            Error('%1 — valore inatteso: %2', Message, Actual);
    end;
}