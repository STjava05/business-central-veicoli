
pageextension 50103 "Customer List Ext" extends "Customer List"
{
    actions
    {
        addafter(Action24)
        {
            action(ClassificaSegmento)
            {
                Caption = 'Classifica Segmento';
                ApplicationArea = All;

                trigger OnAction()
                var
                    SegmentoMgt: Codeunit "Segmento Mgt";
                begin
                    SegmentoMgt.ClassificaTuttiClienti();
                end;
            }
        }
    }
}