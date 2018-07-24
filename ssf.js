// Mock SSF
var SSF = ({});
SSF.currencySymbols = function(char) {
  var _symbols = '$€';
  dump((_symbols.indexOf(char) >-1 ? "Found: " : "Not found: ") + char);
}

