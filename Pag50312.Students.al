page 50312 Students
{
    ApplicationArea = All;
    Caption = 'Students';
    PageType = List;
    SourceTable = Student;
    UsageCategory = Lists;
    CardPageId = "Student Card";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Student No."; Rec."Student No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student No. field.';
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
                field("Mentor Name"; Rec."Mentor Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mentor Name field.';
                }
            }
        }
    }
}
