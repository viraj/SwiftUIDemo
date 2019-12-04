//
//  Asana.swift
//  yogaasana
//
//  Created by Viraj Thenuwara on 11/27/19.
//  Copyright © 2019 VTAPPS. All rights reserved.
//

import SwiftUI

struct Pose: Identifiable {
    var id = UUID()
    var name: String
    var sanskritName: String
    var imageName: String { return sanskritName.lowercased() }
    var thumpnailName: String { return sanskritName.lowercased() + "_thumb" }
}

let testData = [
    Pose(name: "Mountain Pose", sanskritName: "Tadasana"),
    Pose(name: "Bow pose", sanskritName: "Dhanurasana"),
    Pose(name: "Thunderbolt Pose", sanskritName: "Vajrasana"),
    Pose(name: "Triangle Pose", sanskritName: "Trikonasana"),
    Pose(name: "Cobra Pose", sanskritName: "Bhujangasana"),
    Pose(name: "Lotus Pose", sanskritName: "Padmasana"),
    Pose(name: "Fish Pose", sanskritName: "Matsyasana"),
    Pose(name: "Bridge Pose", sanskritName: "Setubandhasana")
    
]
