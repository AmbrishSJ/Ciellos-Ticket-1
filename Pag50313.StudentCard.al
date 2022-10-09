page 50313 "Student Card"
{
    Caption = 'Student Card';
    PageType = Card;
    SourceTable = Student;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Student No."; Rec."Student No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student No. field.';

                    trigger OnAssistEdit()
                    begin
                        If Rec.AssistEdit(xRec) then
                            CurrPage.Update();
                    end;
                }
                field("Student Name"; Rec."Student Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student Name field.';
                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Age field.';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Birth field.';
                }
                field("Mentor No."; Rec."Mentor No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mentor No. field.';
                }
                group(MentorDetails)
                {
                    Caption = 'Mentor Details';
                    field("Mentor Name"; Rec."Mentor Name")
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Mentor Name field.';
                        Editable = false;
                    }
                    field(Role; Rec.Role)
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Role field.';
                        Editable = false;
                    }
                    field(Experience; Rec.Experience)
                    {
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the Experience field.';
                        Editable = false;
                    }
                }
            }
        }
    }

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        If Rec."Mentor No." = '' then
            Error('Student Must Have Mentor Faculty for Guidance');
    end;
}
