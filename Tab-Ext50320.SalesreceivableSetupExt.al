tableextension 50320 "Sales & receivable Setup Ext" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50300; "Student No. Series"; Code[20])
        {
            Caption = 'Student No. Series';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
        field(50301; "Faculty No. Series"; Code[20])
        {
            Caption = 'Faculty No. Series';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
    }
}
