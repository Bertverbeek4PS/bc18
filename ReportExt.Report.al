reportextension 50100 MyExtension extends "Customer - List"
//You can extent DataItem and requestPage
//But you must get full control on the lay-out
{
    dataset
    {
        addlast(customer)
        {
            dataitem(CustomerExt; Customer)
            {
                DataItemLink = "No." = FIELD("No.");
                column("Territory Code"; "Territory Code")
                {
                }
            }
            dataitem(PaymentTerms; "Payment Terms")
            {
                DataItemLink = Code = FIELD("Payment Terms Code");
                RequestFilterFields = Code, Description;
                column(Code; Code)
                {
                }
                column(Description; Description)
                {
                }
            }
        }
    }

    requestpage
    {
        // Add changes to the requestpage here
    }
}