pageextension 50325 "Sales & Receivables Setup Ext" extends "Sales & Receivables Setup"
{
    layout
    {
        addlast("Number Series")
        {
            field("Faculty No. Series"; Rec."Faculty No. Series")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Faculty No. Series field.';
            }
            field("Student No. Series"; Rec."Student No. Series")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Student No. Series field.';
            }
        }
    }
}
