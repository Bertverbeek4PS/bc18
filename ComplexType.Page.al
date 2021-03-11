pageextension 50102 VendorExt extends "Vendor Card"
{
    trigger OnOpenPage()
    begin
        Message(FindLastVendor().Name);
    end;

    procedure FindLastVendor() Vendor: Record Vendor
    begin
        Vendor.Reset;
        Vendor.FindLast();
    end;

}