# stanford 

## Lecture 2
### Model - View - ViewModel
- A "code organization" architectural design paradigm.
- Works in concert  with the concept of "reactive" user-interfaces.
- Must be adhered to for SwiftUI to work.
- It is different from MVC (Mode View Controller) that UIKit (old-style iOS) uses.

### Model
- UI Independent Data + Logic "The Truth"
- Model to View (data flows this way(i.e. read-only))
- Model to ViewModel to View (notices changes)

### View
- Reflects the Model 
- Stateless
- Declared
- Reactive
- (automatically observes publications, pulls data and rebuilds)
- View to ViewModel (calls Intent function)

### ViewModel
- Binds View to Model 
- Interpreter
- might "interpret"
- (publishes "something changed")
- (ObservableObject @Published objectWillChange.send( ).envrionmentObject( ))
- modifies the Model

## Lecture 3
### Layout
- HStack and VStack
- GeometryReader

## Lecture4 
### enum
- Another variety of data structure in addition to struct and class
    - Associated Data : Each state can have its own associated data
    - Setting the value of an enum
### Optionals
- Declaring somthing of type Optional<T> can be done with the syntax T? You can then assign it the value nil (Optional.none) Or you can assign it something of the type T (Optional.some with associated value that value).
- Optional always start out with an implicit = nil

```
enum Optional<T> {
    case none
    case some(<T>)
}
```

