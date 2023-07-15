//
//  EmptyDataViewModifier.swift
//  ListPlaceholder
//
//  Created by Javier Galera (github.com/javiergalera98) on 15/7/23.
//  Copyright © 2023 Javier Galera. All rights reserved.
//
//  ---
//
//  MIT License
//
//  Copyright © 2023 Javier Galera.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation
import SwiftUI

/// A view modifier that displays a placeholder view when the list is empty.
///
/// Use the `EmptyDataViewModifier` to show a placeholder view when the list is empty. The modifier
/// checks if the provided `items` array is empty, and if so, displays the `placeholder` view.
///
/// Example usage:
/// ```swift
/// let items = [1, 2, 3, 4, 5]
///
/// List(items) { item in
///     Text("Item \(item)")
/// }
/// .modifier(EmptyDataViewModifier(items: items, placeholder: Text("No items found")))
/// ```
/// In the above example, the `List` displays a series of text views for each item in the `items` array.
/// If the `items` array is empty, the placeholder view `Text("No items found")` will be shown instead.
public struct EmptyDataViewModifier<Placeholder: View>: ViewModifier {
    /// An array of items in the list.
    let items: [Any]
    
    /// The placeholder view to be displayed when the list is empty.
    let placeholder: Placeholder
    
    /// Modifies the provided content view to include the placeholder view when the list is empty.
    ///
    /// - Parameter content: The content view to be modified.
    /// - Returns: A modified view with the placeholder view included if the list is empty.
    @ViewBuilder
    public func body(content: Content) -> some View {
        if !items.isEmpty {
            content
        } else {
            placeholder
        }
    }
}
