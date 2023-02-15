//
//  Model.swift
//  HW2.4
//
//  Created by Мустафа Натур on 11.02.2023.
//

import Foundation
import UIKit

struct Album {
    let name:String
    let autor:String
    let songs:[Song]
    let image:UIImage?
}

struct Song {
    let name:String
    let autor:String
    let image:UIImage?
}

struct Model {
    static func getAlbums() -> [Album] {
        let album1 = [Song](repeating: Song(name: "Lean4Real", autor: "Playboi carti (feat. Skepta)", image: UIImage(named: "Lean4Real")), count: 10)
        return [Album](repeating: Album(name: "Die Lit", autor: "Playboy carti", songs: album1, image: UIImage(named: "Lean4Real")), count: 10)
    }
}
