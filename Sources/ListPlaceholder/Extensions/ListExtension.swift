//
//  ListExtension.swift
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

public extension List {
    /// Adds a placeholder view to be displayed when the list is empty.
    ///
    /// - Parameters:
    ///   - items: An array of `Any` type representing the items in the list.
    ///   - content: A closure that returns the placeholder view to be displayed when the list is empty.
    /// - Returns: A modified `View` with the `EmptyDataViewModifier` applied.
    ///
    /// Use the `placeholder(for:content:)` function to show a placeholder view when the list is empty.
    /// The function takes an array of items and a closure that returns the placeholder view. It applies
    /// the `EmptyDataViewModifier` to the view and displays the placeholder view when the `items` array is empty.
    ///
    /// Example usage:
    /// ```swift
    /// let items = [1, 2, 3, 4, 5]
    ///
    /// List(items) { item in
    ///     Text("Item \(item)")
    /// }
    /// .placeholder(for: items) {
    ///     Text("No data")
    /// }
    /// ```
    /// In the above example, the `List` displays a series of text views for each item in the `items` array.
    /// If the `items` array is empty, the placeholder view `Text("No data")` will be shown instead.
    func placeholder(for items: [Any], @ViewBuilder content: () -> some View) -> some View {
        modifier(EmptyDataViewModifier(items: items, placeholder: content()))
    }
}
