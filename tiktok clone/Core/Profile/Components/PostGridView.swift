//
//  PostGridView.swift
//  tiktok clone
//
//  Created by Ervin Young on 2/17/24.
//

import SwiftUI

struct PostGridView: View {
    private let items = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible())
    ]
    
    private let width = (UIScreen.main.bounds.width / 3) - 2
    //explanatin for the above code. it is /3 because we want the width to be proportionate to the screen width and it is 3 boxes wide. -2 is because between each box is spacing:1 as announced in the private let items above.
    
    var body: some View {
        LazyVGrid(columns: items, spacing: 3) { //the spacing here is for between rows of boxes
            ForEach(0 ..< 15) { post in
                Rectangle()
                    .frame(width: width, height: 160)
                    .clipped()
                
            }
        }
    }
}
#Preview {
    PostGridView()
}
