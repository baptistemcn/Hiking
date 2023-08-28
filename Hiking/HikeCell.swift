//
//  HikeCell.swift
//  Hiking
//
//  Created by Baptiste MARCON on 28/08/2023.
//

import SwiftUI

struct HikeCell: View {
    let hike: Hike
    
    var body: some View {
        HStack {
            Image(hike.imageURL)
                .resizable()
                .frame(width: 32, height: 32, alignment: .center)
                .cornerRadius(16)
                
            VStack(alignment: .leading) {
                Text(hike.name)
                Text(String(format: "%.2f", hike.miles))
            }
        }
    }
}

struct HikeCell_Previews: PreviewProvider {
    static var previews: some View {
        HikeCell(hike: Hike(name: "Lorem Ipsum", imageURL: "french-flag", miles: 12.0))
            .previewLayout(.sizeThatFits)
    }
}
