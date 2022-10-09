page 50316 "University Subform"
{
    Caption = 'University Subform';
    PageType = ListPart;
    SourceTable = "University Line";
    
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
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line No. field.';
                }
                field("Student No"; Rec."Student No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student No field.';

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        GetStudentInfo(Rec."Student No");
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
                field("Mentor Name"; Rec."Mentor Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mentor Name field.';
                }
                field(Experenice; Rec.Experenice)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Experenice field.';
                }
                field(Role; Rec.Role)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Role field.';
                }
                field(Certified; Rec.Certified)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Certified field.';
                }
            }
        }
    }
     procedure GetStudentInfo(StudentNo:Code[20])
     var
     StudentRec: Record Student;
    begin
        StudentRec.Reset();
        StudentRec.SetRange("Student No.",StudentNo);
        
    end;
}
