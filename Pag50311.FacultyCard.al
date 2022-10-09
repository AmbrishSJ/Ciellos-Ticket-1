page 50311 "Faculty Card"
{
    Caption = 'Faculty Card';
    PageType = Card;
    SourceTable = Faculty;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Faculty No."; Rec."Faculty No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Faculty No. field.';

                    trigger OnAssistEdit()
                    begin
                        if Rec.AssistEdit(xRec) then
                            CurrPage.Update();
                    end;
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
                    Editable = false;
                }
            }
        }
    }
}
