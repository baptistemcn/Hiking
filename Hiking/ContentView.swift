//
//  ContentView.swift
//  Hiking
//
//  Created by Baptiste MARCON on 28/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = Hike.all()
    
    var body: some View {
        List(self.hikes, id: \.name) { hike in
            HikeCell(hike: hike)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
