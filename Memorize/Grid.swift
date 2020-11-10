//
//  Grid.swift
//  Memorize
//
//  Created by Inaldo Ramos Ribeiro on 27/07/2020.
//  Copyright © 2020 Inaldo Ramos Ribeiro. All rights reserved.
//

import SwiftUI

struct Grid<Item, ItemView>: View {
    
    var items: [Item]
    var viewForItem: (Item) -> ItemView
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
