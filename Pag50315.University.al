page 50315 University
{
    Caption = 'University';
    PageType = Card;
    SourceTable = "University Header";

    layout
    {
        area(content)
        {
            group(General)
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
            part(UniversityLines; "University Subform")
            {
                Caption = 'University Lines';
                ApplicationArea = all;
                SubPageLink = "University No." = field("University No.");
            }
        }
    }
}
