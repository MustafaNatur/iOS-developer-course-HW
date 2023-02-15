//
//  Model.swift
//  SettingsAppImplementation
//
//  Created by Мустафа Натур on 15.02.2023.
//

import Foundation
import UIKit

struct Section {
    let title:String
    let cells:[CellModel]
}

struct CellModel {
    let name:String
    let icon:UIImage?
    let color:UIColor
}

struct Model {
    static func getData() -> [Section]{
        return [
            Section(title: "General", cells: [
            CellModel(name: "Mustafa Natur", icon: UIImage(systemName: "person.fill"), color: .green)]),
            
            Section(title: "General", cells: [
            CellModel(name: "Airplane Mode", icon: UIImage(systemName: "airplane"), color: .orange),
            CellModel(name: "Wi-Fi", icon: UIImage(systemName: "wifi"), color: .blue),
            CellModel(name: "Bluetooth", icon: UIImage(systemName: "network"), color: .blue),
            CellModel(name: "Mobile data", icon: UIImage(systemName: "cellularbars"), color: .orange)]),
            
            Section(title: "General", cells: [
            CellModel(name: "Airplane Mode", icon: UIImage(systemName: "airplane"), color: .orange),
            CellModel(name: "Wi-Fi", icon: UIImage(systemName: "wifi"), color: .blue),
            CellModel(name: "Bluetooth", icon: UIImage(systemName: "network"), color: .blue),
            CellModel(name: "Mobile data", icon: UIImage(systemName: "cellularbars"), color: .orange)]),
            
            Section(title: "General", cells: [
            CellModel(name: "Airplane Mode", icon: UIImage(systemName: "airplane"), color: .orange),
            CellModel(name: "Wi-Fi", icon: UIImage(systemName: "wifi"), color: .blue),
            CellModel(name: "Bluetooth", icon: UIImage(systemName: "network"), color: .blue),
            CellModel(name: "Mobile data", icon: UIImage(systemName: "cellularbars"), color: .orange)]),
            
            Section(title: "General", cells: [
            CellModel(name: "Airplane Mode", icon: UIImage(systemName: "airplane"), color: .orange),
            CellModel(name: "Wi-Fi", icon: UIImage(systemName: "wifi"), color: .blue),
            CellModel(name: "Bluetooth", icon: UIImage(systemName: "network"), color: .blue),
            CellModel(name: "Mobile data", icon: UIImage(systemName: "cellularbars"), color: .orange)])
        ]
    }
}
