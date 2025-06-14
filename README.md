# CalculatorKeyboard

![CalculatorKeyboard Screenshot](./Screenshot.png?raw=true)

## Usage

To run the example project, clone the repo, and open the 'Example/Example.xcodeproj' file.

## Requirements

This component is written using Swift and Dynamic Frameworks, and minimum deployment target is iOS 15.0.

## Installation

Add to your project as Swift package

## Usage

Using `CalculatorKeyboard` is quite simple. First you need to import the Framework

```swift
import CalculatorKeyboard
```

Then instantiate the view and apply it to a text input (`UITextField` or `UITextView`).

```swift
let calcInputView = CalculatorKeyboard(frame: frame)
calcInputView.delegate = self
textField.inputView = calcInputView
```

`CalculatorKeyboard` uses a delegate to report back the values. That way, you have the flexibility to format the text the way you want before displaying to the user.

```swift
func calculator(calculator: CalculatorKeyboard, didChangeValue value: String) {
	valueTextField.text = value
}
```

### Customization
`CalculatorKeyboard` supports some layout customizations.

```swift
// Show/Hide decimal button in keyboard. When hidden, the decimal input begin from the least
// significative cent. Eg. 0.00 -> 0.02 -> 0.25 -> 2.50
showDecimal: Bool 

numbersBackgroundColor: UIColor
numbersTextColor: UIColor
operationsBackgroundColor: UIColor
operationsTextColor: UIColor
equalBackgroundColor: UIColor
equalTextColor: UIColor
```

## Author

Reefactor, Inc., reefactor@gmail.com

## License

CalculatorKeyboard is available under the MIT license. See the LICENSE file for more info.
