//
//  HikeDetail.swift
//  Hiking
//
//  Created by Baptiste MARCON on 28/08/2023.
//

import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    
    @State private var zoomed: Bool = false;
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            
            Text(hike.name)
            
            Text(String(format: "%.2f", hike.miles))
        }
        .navigationTitle(Text(hike.name))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike(name: "Lorem Ipsum", imageURL: "french-flag", miles: 10.0))
    }
}
