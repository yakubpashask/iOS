import Foundation
class Array2D<T> {
    let columns: Int
    let rows: Int
    
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        
        array = Array<T?>(count:rows * columns, repeatedValue: nil)
    }
    
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[(row * columns) + column]
        }
        set(newValue) {
            array[(row * columns) + column] = newValue
        }
    }
}

//Usage :
/*
  let boolArray = Array2D<Bool>(columns: totalColoumns, rows: totalRows)
  boolArray[0,1] = false
  boolArray[0,2] = true//..etc
*/
