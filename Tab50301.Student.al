table 50301 Student
{
    Caption = 'Student';
    DataClassification = CustomerContent;
    DataCaptionFields = "Student No.", "Student Name";
    LookupPageId = Students;
    DrillDownPageId = Students;

    fields
    {
        field(1; "Student No."; Code[20])
        {
            Caption = 'Student No.';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                If Rec."Student No." <> xRec."Student No." then begin
                    SalesAndReceivablesSetup.Get();
                    NoSeriesMgt.TestManual(SalesAndReceivablesSetup."Student No. Series");
                    "No. Series" := '';
                end;
            end;
        }
        field(2; "Student Name"; Text[100])
        {
            Caption = 'Student Name';
            DataClassification = CustomerContent;
        }
        field(3; Age; Integer)
        {
            Caption = 'Age';
            DataClassification = CustomerContent;
        }
        field(4; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';
            DataClassification = CustomerContent;
        }
        field(5; "Mentor No."; Code[20])
        {
            Caption = 'Mentor No.';
            DataClassification = CustomerContent;
            TableRelation = Faculty;

            trigger OnValidate()
            var
                FacultyRec: Record Faculty;
            begin
                FacultyRec.Reset();
                If FacultyRec.Get("Mentor No.") then begin
                    Rec."Mentor Name" := FacultyRec."Faculty Name";
                    Rec.Role := FacultyRec.Role;
                    Rec.Experience := FacultyRec.Experince;
                end;
            end;
        }
        field(6; "Mentor Name"; Text[100])
        {
            Caption = 'Mentor Name';
            DataClassification = CustomerContent;
        }
        field(7; Role; Enum "Faculty Role")
        {
            Caption = 'Role';
            DataClassification = CustomerContent;
        }
        field(8; Experience; Decimal)
        {
            Caption = 'Experience';
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 1;
        }
        field(10; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Student No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        if "Student No." = '' then begin
            SalesAndReceivablesSetup.Get();
            SalesAndReceivablesSetup.TestField("Student No. Series");
            NoSeriesMgt.InitSeries(SalesAndReceivablesSetup."Student No. Series", xRec."Student No.", 0D, "Student No.", "No. Series");
        end;
    end;

    procedure AssistEdit(OldStudentRec: Record Student): Boolean
    var
        StudentRec: Record Student;
    begin
        StudentRec := Rec;
        if SalesAndReceivablesSetup.FindFirst() then begin
            SalesAndReceivablesSetup.TestField("Student No. Series");
            if NoSeriesMgt.SelectSeries(SalesAndReceivablesSetup."Student No. Series", OldStudentRec."No. Series", StudentRec."No. Series") then begin
                NoSeriesMgt.SetSeries("Student No.");
                Rec := StudentRec;
                exit(true);
            end;
        end;
    end;

    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        SalesAndReceivablesSetup: Record "Sales & Receivables Setup";
}
