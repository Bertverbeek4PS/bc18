pageextension 50101 CustomerExt extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Payment Terms Lookup"; rec."Payment Terms Code")
            {
                ApplicationArea = All;
                Importance = Standard;
                trigger OnLookup(var Text: Text): Boolean
                var
                    PaymentTerm: Record "Payment Terms";
                begin
                    PaymentTerm.Reset;
                    if PAGE.RunModal(0, PaymentTerm) = ACTION::LookupOK then begin
                        Text := PaymentTerm.Code;
                        exit(true);
                    end;
                end;

                trigger OnAfterLookup(Selected: RecordRef) //Now we have this trigger that passes the recordId
                begin
                    //Do something
                end;
            }
        }
    }
    var
        myInt: Integer;
}