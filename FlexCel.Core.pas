unit FlexCel.Core;

interface

uses
  System.SysUtils,
  Data.DB,
  _UCoreEnums.ColumnImportType;

type
  {$SCOPEDENUMS ON}
  TFileFormats = (
    Text = 1,
    Xlsx = 2
  );
  TColumnType = (
    Normal = 0
  );
  {$SCOPEDENUMS OFF}

  TCellValue = class(TField)
  public
    function IsDateTime: Boolean;
    function AsDateTime: TDateTime;
    function IsNumber: Boolean;
    function IsString: Boolean;
    function AsNumber: Double;
    function IsEmpty: Boolean;
    function HasValue: Boolean;
  end;

  TXlsFile = class
  public
    procedure Open(const FilePath: string; const Format: TFileFormats; const Separator: Char; const A, B: Integer; const ColumnTypes: TColumnImportTypeArray; const Ptr: Pointer; const Encoding: TEncoding; const Something: Boolean);
    function GetRowCount(const Col: Integer): Integer;
    function IsEmptyRow(const RowIndex: Integer): Boolean;

    function GetColCount(const Row: Integer): Integer;
    function GetCellValue(const Row, Column: Integer): TCellValue;
  end;

implementation

{ TXlsFile }

function TXlsFile.GetCellValue(const Row, Column: Integer): TCellValue;
begin
  Result := nil;
end;

function TXlsFile.GetColCount(const Row: Integer): Integer;
begin
  Result := 0;
end;

function TXlsFile.GetRowCount(const Col: Integer): Integer;
begin
  Result := 0;
end;

function TXlsFile.IsEmptyRow(const RowIndex: Integer): Boolean;
begin
  Result := False;
end;

procedure TXlsFile.Open(const FilePath: string; const Format: TFileFormats; const Separator: Char; const A, B: Integer; const ColumnTypes: TColumnImportTypeArray; const Ptr: Pointer; const Encoding: TEncoding; const Something: Boolean);
begin

end;

{ TCellValue }

function TCellValue.AsDateTime: TDateTime;
begin
  Result := 0;
end;

function TCellValue.AsNumber: Double;
begin
  Result := 0;
end;

function TCellValue.HasValue: Boolean;
begin
  Result := False;
end;

function TCellValue.IsDateTime: Boolean;
begin
  Result := False;
end;

function TCellValue.IsEmpty: Boolean;
begin
  Result := False;
end;

function TCellValue.IsNumber: Boolean;
begin
  Result := False;
end;

function TCellValue.IsString: Boolean;
begin
  Result := False;
end;

end.
