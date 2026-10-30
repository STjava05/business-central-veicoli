codeunit 50121 "Test Veicoli"
{
    Subtype = Test;

    [Test]
    procedure CreazioneVeicolo_NumeroAutoAssegnato()
    var
        Veicolo: Record Veicolo;
        Assert: Codeunit "Test Assert";
    begin
        // [GIVEN] Un nuovo veicolo SENZA numero
        Veicolo.Init();

        // [WHEN] Lo inserisco in tabella
        Veicolo.Insert(true);

        // [THEN] Il numero deve essere stato assegnato automaticamente
        Assert.AreNotEqual('', Veicolo."Nr.", 'Il numero non è stato assegnato!');
    end;

    [Test]
    procedure CreazioneVeicolo_ConteggioAumenta()
    var
        Veicolo: Record Veicolo;
        Assert: Codeunit "Test Assert";
        ConteggioPrima: Integer;
        ConteggioDopo: Integer;
    begin
        // [GIVEN] Il numero attuale di veicoli
        Veicolo.Reset();
        ConteggioPrima := Veicolo.Count();

        // [WHEN] Creo un nuovo veicolo
        Veicolo.Init();
        Veicolo.Insert(true);

        // [THEN] Il conteggio aumenta di esattamente 1
        Veicolo.Reset();
        ConteggioDopo := Veicolo.Count();
        Assert.AreEqual(ConteggioPrima + 1, ConteggioDopo, 'Il veicolo non è stato inserito!');
    end;
}