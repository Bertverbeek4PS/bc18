tableextension 50100 CustomerExt extends Customer
{
    fields
    {
        // Add changes to table fields here
    }

    keys
    {
        key(Key50100; Address) //the order must be fields, keys, var
        {
        }
    }

}