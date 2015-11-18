//
//  NSIndexPath+DataGrid.swift
//
//  Created by Vladimir Lyukov on 31/07/15.
//

import Foundation


/**
 Custom extension for NSIndexPath to support data grid view rows/columns. You should NOT used indexPath.row to access data grid view row index. Use indexPath.dataGridRow and indexPath.dataGridSection instead.
*/
public extension NSIndexPath {
    /**
     Returns an index-path object initialized with the indexes of a specific row and column in a data grid view.

     - parameter column: An index number identifying a column in a DataGridView object in a row identified by the row parameter.
     - parameter row:    An index number identifying a row in a DataGridView object.

     - returns: An NSIndexPath object.
     */
    convenience init(forColumn column: Int, row: Int) {
        self.init(forItem: column, inSection: row)
    }

    /// An index number identifying a column in a row of a data grid view. (read-only)
    var dataGridColumn: Int {
        return indexAtPosition(1)
    }

    /// An index number identifying a row in a data grid view. (read-only)
    var dataGridRow: Int {
        return indexAtPosition(0)
    }
}
