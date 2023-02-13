//
//  Model.swift
//  HW2.4
//
//  Created by Мустафа Натур on 11.02.2023.
//

import Foundation
import UIKit

struct Song {
    let name:String
    let autor:String
    let image:UIImage?
}

struct Model {
    static func getSongs() -> [Song] {
        return [Song](repeating: Song(name: "Lean4Real", autor: "Playboi carti (feat. Skepta)", image: UIImage(named: "Lean4Real")), count: 10)
    }
}
