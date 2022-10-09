table 50300 Faculty
{
    Caption = 'Faculty';
    DataClassification = CustomerContent;
    DataCaptionFields = "Faculty No.", "Faculty Name";
    LookupPageId = Faculties;
    DrillDownPageId = Faculties;

    fields
    {
        field(1; "Faculty No."; Code[20])
        {
            Caption = 'Faculty No.';
            DataClassification = CustomerContent;
        }
        field(2; "Faculty Name"; Text[100])
        {
            Caption = 'Faculty Name';
            DataClassification = CustomerContent;
        }
        field(3; Gender; Enum Gender)
        {
            Caption = 'Gender';
            DataClassification = CustomerContent;
        }
        field(4; "Date of Joining"; Date)
        {
            Caption = 'Date of Joining';
            DataClassification = CustomerContent;
        }
        field(5; Role; Enum "Faculty Role")
        {
            Caption = 'Role';
            DataClassification = CustomerContent;
        }
        field(6; Experince; Decimal)
        {
            Caption = 'Experince';
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 1;
        }
        field(7; "No of Students"; Integer)
        {
            Caption = 'No of Students';
            FieldClass = FlowField;
            CalcFormula = count(Student where("Mentor No." = field("Faculty No.")));
        }
        field(8; "Subject"; Enum Subjects)
        {
            Caption = 'Subject';
            DataClassification = CustomerContent;
        }
        field(9; "No. Series"; Code[20])
        {
            Caption = 'No. of Series';
            DataClassification = CustomerContent;
            TableRelation = "No. Series".Code;
        }
    }
    keys
    {
        key(PK; "Faculty No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "Faculty No.", "Faculty Name", Role) { }
    }

    trigger OnInsert()
    begin
        if "Faculty No." = '' then begin
            SalesAndReceivablesSetup.Get();
            SalesAndReceivablesSetup.TestField("Faculty No. Series");
            NoSeriesMgt.InitSeries(SalesAndReceivablesSetup."Faculty No. Series", xRec."Faculty No.", 0D, "Faculty No.", "No. Series");
        end;
    end;

    procedure AssistEdit(OldFacultyRec: Record Faculty): Boolean
    var
        FacultyRec: Record Faculty;
    begin
        FacultyRec := Rec;
        if SalesAndReceivablesSetup.FindFirst() then begin
            SalesAndReceivablesSetup.TestField("Faculty No. Series");
            if NoSeriesMgt.SelectSeries(SalesAndReceivablesSetup."Faculty No. Series", FacultyRec."No. Series", FacultyRec."No. Series") then begin
                NoSeriesMgt.SetSeries("Faculty No.");
                Rec := FacultyRec;
                exit(true);
            end;
        end;
    end;

    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        SalesAndReceivablesSetup: Record "Sales & Receivables Setup";
}
