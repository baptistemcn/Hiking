//
//  Hike.swift
//  Hiking
//
//  Created by Baptiste MARCON on 28/08/2023.
//

import Foundation

struct Hike {
    let name: String
    let imageURL: String
    let miles: Double
}

extension Hike {
    static func all() -> [Hike] {
        return [
            Hike(name: "Salmonberry Trail", imageURL: "french-flag", miles: 6),
            Hike(name: "Tom, Dick, and Harry Mountain", imageURL: "us-flag", miles: 5.8),
            Hike(name: "Tamanawas Falls", imageURL: "react", miles: 5)
        ]
    }
}
