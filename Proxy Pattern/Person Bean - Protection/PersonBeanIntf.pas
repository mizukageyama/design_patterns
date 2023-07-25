unit PersonBeanIntf;

interface

type
  IPersonBean = interface
    function GetName: string;
    function GetGender: string;
    function GetInterest: string;
    function GetHotOrNotRating: Integer;
    procedure SetName(Name: string);
    procedure SetGender(Gender: string);
    procedure SetInterest(Interest: string);
    procedure SetHotOrNotRating(Rating: Integer);
  end;

implementation

end.
