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

    [Test]
    procedure ModificaVeicolo_NumeroNonCambiato()
    var
        Veicolo: Record Veicolo;
        Assert: Codeunit "Test Assert";
        NumeroPrima: Code[20];
    begin
        // [GIVEN] Un veicolo esistente
        Veicolo.FindFirst();
        NumeroPrima := Veicolo."Nr.";

        // [WHEN] Modifico la marca
        Veicolo.Marca := 'TEST-MODIFICA';
        Veicolo.Modify(true);

        // [THEN] Il numero NON deve cambiare
        Assert.AreEqual(NumeroPrima, Veicolo."Nr.", 'Il numero è cambiato!');
    end;

    [Test]
    procedure RecordRef_ConteggioVeicoli()
    var
        Veicolo: Record Veicolo;
        Utils: Codeunit "Veicoli Utils";
        Assert: Codeunit "Test Assert";
    begin
        // [GIVEN] Il conteggio con la normale Record
        Veicolo.Reset();

        // [WHEN/THEN] La RecordRef dinamica deve dare lo stesso risultato
        Assert.AreEqual(Veicolo.Count(), Utils.ContaVeicoli(),
            'RecordRef conteggio errato!');
    end;

    [Test]
    procedure RecordRef_DescriviCustomer()
    var
        Utils: Codeunit "Veicoli Utils";
        Assert: Codeunit "Test Assert";
        Descrizione: Text;
    begin
        Descrizione := Utils.DescriviTabella(Database::Customer);
        Assert.AreNotEqual('', Descrizione, 'Descrizione vuota!');
    end;

    [Test]
    procedure AssegnazioneCliente_StatoAssegnato()
    var
        Veicolo: Record Veicolo;
        Assert: Codeunit "Test Assert";
    begin
        // [GIVEN] Un nuovo veicolo senza cliente
        Veicolo.Init();
        Veicolo.Insert(true);

        // [WHEN] Assegno il cliente 10000 (Validate = esegue il trigger!)
        Veicolo.Validate("Nr. cliente", '10000');
        Veicolo.Modify(true);

        // [THEN] Lo stato deve essere Assegnato
        Assert.AreEqual(Veicolo.Stato::Assegnato, Veicolo.Stato,
            'Stato non aggiornato dopo assegnazione cliente!');
    end;

    [Test]
    procedure DescriviTabella_RitornaNomeTabella()
    var
        Utils: Codeunit "Veicoli Utils";
        Assert: Codeunit "Test Assert";
        Descrizione: Text;
    begin
        // [GIVEN] Un nuovo veicolo senza cliente
        Descrizione := Utils.DescriviTabella(Database::Veicolo);

        // [THEN] Lo stato deve essere Assegnato
        Assert.AreNotEqual(0, StrPos(Descrizione, 'Veicolo'),
        'Il nome della tabella non è presente!');
    end;


}