import 'dart:io';

var mainSelections = "";
var childSelections = "";
var restart = false;

void main() {
  do {
    restart = false;
    var myOptions = {
      "1": "Length Conversion",
      "2": "Temperature Conversion",
      "3": "Area Conversion",
      "4": "Weight Conversion",
      "5": "Time Conversion",
    };
    showOptions(myOptions);
  } while (restart);
}

showOptions(Map optionsMap) {
  print("---------------------------------");
  print("Please select one option");
  for (var i = 1; i <= optionsMap.length; i++) {
    print("$i: ${optionsMap["$i"]}");
  }

  mainSelections = stdin.readLineSync()!;
  if (mainSelections == "1") {
    showLengthOptions();
  } else if (mainSelections == "2") {
    showTempOptions();
  } else if (mainSelections == "3") {
    Areaconversion();
  } else if (mainSelections == "4") {
    Weightconversion();
  } else if (mainSelections == "5") {
    Timeconversion();
  } else {
    print("Incorrect Input, Please make selection from above options only");
    showOptions(optionsMap);
  }
}

showLengthOptions() {
  print("---------------------------------");
  print("Please select one option");
  var myOptions = {
    "1": "Meter to kilometers",
    "2": "Kilometer to Meters",
    "3": "feet to Inches",
    "4": "Inches to Feet",
    "5": "Centimeter to Meter",
    "6": "Meter to Centimeter"
  };
  for (var i = 1; i <= myOptions.length; i++) {
    print("$i: ${myOptions["$i"]}");
  }
  childSelections = stdin.readLineSync()!;
  if (childSelections == "1") {
    meterToKilometers();
  } else if (childSelections == "2") {
    kmToMeters();
  } else if (childSelections == "3") {
    feetToInches();
  } else if (childSelections == "4") {
    inchesToFeet();
  } else if (childSelections == "5") {
    cmToMeters();
  } else if (childSelections == "6") {
    metersToCm();
  } else {
    print("Incorrect Input, Please make selection from above options only");
    showLengthOptions();
  }
  restartProgram();
}

showTempOptions() {
  print("---------------------------------");
  print("Please select one option");
  var myOptions = {
    "1": "Fahrenheit to Celcius",
    "2": "Celcius to Fahrenheit",
  };
  for (var i = 1; i <= myOptions.length; i++) {
    print("$i: ${myOptions["$i"]}");
  }
  childSelections = stdin.readLineSync()!;
  if (childSelections == "1") {
    fahrenheittoCelcius();
  } else if (childSelections == "2") {
    celciustofahrenheit();
  } else {
    print("Incorrect Input, Please make selection from above options only");
    showTempOptions();
  }
  restartProgram();
}

Areaconversion() {
  print("---------------------------------");
  print("Please select one option");
  var myOptions = {
    "1": "Square Miles to Square yards",
    "2": "Square Yards to Square Miles",
    "3": "Square Yards to Square Feet",
    "4": "Square Feet to Square Yards"
  };
  for (var i = 1; i <= myOptions.length; i++) {
    print("$i: ${myOptions["$i"]}");
  }
  childSelections = stdin.readLineSync()!;
  if (childSelections == "1") {
    sqmilestosqyard();
  } else if (childSelections == "2") {
    sqyardstosqmiles();
  } else if (childSelections == "3") {
    sqyardtosqfeet();
  } else if (childSelections == "4") {
    sqfeettosqyard();
  } else {
    print("Incorrect Input, Please make selection from above options only");
    Areaconversion();
  }
  restartProgram();
}

Weightconversion() {
  print("---------------------------------");
  print("Please select one option");
  var myOptions = {
    "1": "Kilogram to Grams",
    "2": "Grams to Kilogram",
    "3": "Pounds to Kilogram",
    "4": "Kilograms to Tons",
    "5": "Tons to Kilograms"
  };
  for (var i = 1; i <= myOptions.length; i++) {
    print("$i: ${myOptions["$i"]}");
  }
  childSelections = stdin.readLineSync()!;
  if (childSelections == "1") {
    kilogramtogram();
  } else if (childSelections == "2") {
    gramtokilogram();
  } else if (childSelections == "3") {
    poundtokilogram();
  } else if (childSelections == "4") {
    kilogramtotons();
  } else if (childSelections == "5") {
    tonstokilogram();
  } else {
    print("Incorrect Input, Please make selection from above options only");
    Weightconversion();
  }
  restartProgram();
}

Timeconversion() {
  print("---------------------------------");
  print("Please select one option");
  var myOptions = {
    "1": "Seconds to Minutes",
    "2": "Minutes to Seconds",
    "3": "Minutes to Hours",
    "4": "Seconds to Hours",
    "5": "Milliseconds to Minutes",
    "6": "Milliseconds to Hours"
  };
  for (var i = 1; i <= myOptions.length; i++) {
    print("$i: ${myOptions["$i"]}");
  }
  childSelections = stdin.readLineSync()!;
  if (childSelections == "1") {
    secondstominute();
  } else if (childSelections == "2") {
    minutestosecond();
  } else if (childSelections == "3") {
    minutestohour();
  } else if (childSelections == "4") {
    secondstohour();
  } else if (childSelections == "5") {
    millisectominute();
  } else if (childSelections == "6") {
    millisectohours();
  } else {
    print("Incorrect Input, Please make selection from above options only");
    Timeconversion();
  }
  restartProgram();
}

meterToKilometers() {
  int meters = int.parse(stdin.readLineSync()!);
  int km = meters ~/ 1000;
  print("$meters are equal to $km");
}

kmToMeters() {
  int km = int.parse(stdin.readLineSync()!);
  int meter = km * 1000;
  print("$km are equal to $meter");
}

feetToInches() {
  int feet = int.parse(stdin.readLineSync()!);
  int inches = feet * 12;
  print("$feet are equal to $inches");
}

inchesToFeet() {
  int inches = int.parse(stdin.readLineSync()!);
  double feet = inches / 12;
  print("$inches are equal to $feet");
}

cmToMeters() {
  int cm = int.parse(stdin.readLineSync()!);
  double meters = cm / 100;
  print("$cm are equal to $meters");
}

metersToCm() {
  int meter = int.parse(stdin.readLineSync()!);
  double cm = meter / 100;
  print("$meter are equal to $cm");
}

fahrenheittoCelcius() {
  int fahrenheit = int.parse(stdin.readLineSync()!);
  num celcius = (fahrenheit - 32) * 5 / 9;
  print("$fahrenheit is equals to $celcius");
}

celciustofahrenheit() {
  int celcius = int.parse(stdin.readLineSync()!);
  num fahrenheit = (celcius * 9 / 5) + 32;
  print("$celcius is equals to $fahrenheit");
}

sqmilestosqyard() {
  int sqmiles = int.parse(stdin.readLineSync()!);
  num sqyards = sqmiles * 14.4212371046;
  print("$sqmiles is equals to $sqyards");
}

sqyardstosqmiles() {
  int sqyards = int.parse(stdin.readLineSync()!);
  num sqmiles = sqyards / 14.4212371046;
  print("$sqyards is equals to $sqmiles");
}

sqyardtosqfeet() {
  int sqyard = int.parse(stdin.readLineSync()!);
  num sqfeet = sqyard * 9;
  print("$sqyard is equals to $sqfeet");
}

sqfeettosqyard() {
  int sqfeet = int.parse(stdin.readLineSync()!);
  num sqyard = sqfeet / 9;
  print("$sqfeet is equals to $sqyard");
}

kilogramtogram() {
  int kg = int.parse(stdin.readLineSync()!);
  num gram = kg / 1000;
  print("$kg is equals to $gram");
}

gramtokilogram() {
  int pound = int.parse(stdin.readLineSync()!);
  num kg = pound / 2.205;
  print("$pound is equals to $kg");
}

kilogramtotons() {
  int kg = int.parse(stdin.readLineSync()!);
  num ton = kg / 907.2;
  print("$kg is equals to $ton");
}

tonstokilogram() {
  int ton = int.parse(stdin.readLineSync()!);
  num kg = ton * 907.2;
  print("$ton is equals to $kg");
}

poundtokilogram() {
  int pound = int.parse(stdin.readLineSync()!);
  num kg = pound / 2.205;
  print("$pound is equals to $kg");
}

secondstominute() {
  int second = int.parse(stdin.readLineSync()!);
  num min = second * 60;
  print("$second is equals to $min");
}

minutestosecond() {
  int min = int.parse(stdin.readLineSync()!);
  num second = min / 60;
  print("$min is equals to $second");
}

minutestohour() {
  int min = int.parse(stdin.readLineSync()!);
  num hour = min * 60;
  print("$min is equals to $hour");
}

secondstohour() {
  int sec = int.parse(stdin.readLineSync()!);
  num hour = sec * 3600;
  print("$sec is equals to $hour");
}

millisectominute() {
  int second = int.parse(stdin.readLineSync()!);
  num min = second / 60000;
  print("$second is equals to $min");
}

millisectohours() {
  int sec = int.parse(stdin.readLineSync()!);
  num hour = sec / 3600000;
  print("$sec is equals to $hour");
}

restartProgram() {
  print("---------------------------------");
  print("Press R to Continue");
  print("Press T to Terminate");
  var input = stdin.readLineSync();
  if (input == "R") {
    restart = true;
  } else if (input == "T") {
    restart = false;
  } else {
    print("Incorrect Input, Please make selection from above options only");
    restartProgram();
  }
}
