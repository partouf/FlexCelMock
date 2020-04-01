unit _UCoreEnums.ColumnImportType;

interface

uses
  System.Generics.Collections;

type
  {$SCOPEDENUMS ON}
  TColumnImportType = (
    General,
    Text
  );
  {$SCOPEDENUMS OFF}

  TColumnImportTypeArray = TArray<TColumnImportType>;

implementation

end.
