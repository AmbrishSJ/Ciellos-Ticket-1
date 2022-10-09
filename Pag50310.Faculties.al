page 50310 Faculties
{
    ApplicationArea = All;
    Caption = 'Faculties';
    PageType = List;
    SourceTable = Faculty;
    UsageCategory = Lists;
    CardPageId="Faculty Card";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Faculty No."; Rec."Faculty No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Faculty No. field.';
                }
                field("Faculty Name"; Rec."Faculty Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Faculty Name field.';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.';
                }
                field(Role; Rec.Role)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Role field.';
                }
                field("Subject"; Rec."Subject")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Subjects Handled field.';
                }
                field(Experince; Rec.Experince)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Experince field.';
                }
                field("Date of Joining"; Rec."Date of Joining")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Joining field.';
                }
                field("No of Students"; Rec."No of Students")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No of Students field.';
                }
            }
        }
    }
}
