page 50314 Universities
{
    ApplicationArea = All;
    Caption = 'Universities';
    PageType = List;
    SourceTable = "University Header";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("University No."; Rec."University No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the University No. field.';
                }
                field("University Name"; Rec."University Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the University Name field.';
                }
                field("Email "; Rec."Email ")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email  field.';
                }
                field(Certified; Rec.Certified)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Certified field.';
                }
            }
        }
    }
}
