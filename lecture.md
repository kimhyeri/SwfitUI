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
