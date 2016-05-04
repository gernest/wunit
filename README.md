# wunit 
A classy unit testing library for wren programming langage

# installation

Clone this at the root of your project
```bash
git clone git@github.com:gernest/wunit.git
```

# Usage
```dart
import "wunit/wunit" for WUnit

WUnit.test{ |case|
  case.name="Fail"
  case.describe=" Showcase the power of wunit for a failed test"

  /*
   * YOu can write any logic for your tests here
  */ 

  if (1!=2){
    case.fail(" expected 1 to equal 2")
  }
}

WUnit.test{ |case|
  case.name="Pass"
  case.describe=" Showcase the power of wunit for a passing test"

  /*
   * YOu can write any logic for your tests here
  */ 

  if (1>2){
    case.fail(" expected 1 to be less than  2")
  }
}
```
