//
//  HikeDetail.swift
//  Hiking
//
//  Created by Baptiste MARCON on 28/08/2023.
//

import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(hike.name)
            Text(String(format: "%.2f", hike.miles))
        }
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike(name: "Lorem Ipsum", imageURL: "french-flag", miles: 10.0))
    }
}
