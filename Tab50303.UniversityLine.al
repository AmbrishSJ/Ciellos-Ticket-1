table 50303 "University Line"
{
    Caption = 'University Line';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "University No."; Code[20])
        {
            Caption = 'University No.';
            DataClassification = CustomerContent;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(3; "Student No"; Code[20])
        {
            Caption = 'Student No';
            DataClassification = CustomerContent;
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
            Caption = 'Date of Birth';
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
        field(10; Experenice; Decimal)
        {
            Caption = 'Experenice';
            DataClassification = CustomerContent;
        }
        field(11; Certified; Enum "Sales Document Status")
        {
            Caption = 'Certified';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "University No.", "Line No.")
        {
            Clustered = true;
        }
    }
}
