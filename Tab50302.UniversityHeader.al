table 50302 "University Header"
{
    Caption = 'University Header';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "University No."; Code[20])
        {
            Caption = 'University No.';
            DataClassification = CustomerContent;
        }
        field(2; "University Name"; Text[100])
        {
            Caption = 'University Name';
            DataClassification = CustomerContent;
        }
        field(3; "Student No."; Code[20])
        {
            Caption = 'Student No.';
            DataClassification = CustomerContent;
            TableRelation = Student;

        }
        field(4; "Student Name"; Text[100])
        {
            Caption = 'Student Name';
            DataClassification = CustomerContent;
        }
        field(5; Age; Integer)
        {
            Caption = 'Age';
            DataClassification = CustomerContent;
        }
        field(6; "Date of Birth"; Date)
        {
            Caption = 'Date of BIrth';
            DataClassification = CustomerContent;
        }
        field(7; "Mentor No."; Code[20])
        {
            Caption = 'Mentor No.';
            DataClassification = CustomerContent;
        }
        field(8; "Mentor Name"; Text[100])
        {
            Caption = 'Mentor Name';
            DataClassification = CustomerContent;
        }
        field(9; Role; Enum "Faculty Role")
        {
            Caption = 'Role';
            DataClassification = CustomerContent;
        }
        field(10; Experience; Decimal)
        {
            Caption = 'Experience';
            DataClassification = CustomerContent;
        }
        field(11; "Email "; Code[30])
        {
            Caption = 'Email ';
            DataClassification = CustomerContent;
        }
        field(12; Certified; Enum "Sales Document Status")
        {
            Caption = 'Certified';
            DataClassification = CustomerContent;
        }
        field(13; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "University No.")
        {
            Clustered = true;
        }
    }

}
