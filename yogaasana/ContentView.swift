//
//  ContentView.swift
//  yogaasana
//
//  Created by Viraj Thenuwara on 11/27/19.
//  Copyright © 2019 VTAPPS. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var poses: [Pose] = []
    
    var body: some View {
        NavigationView {
            List(poses) { pose in
                poseCell(pose: pose)
            }
            .navigationBarTitle("Yoga Asana")
        }
        
    }
}

struct poseCell: View {
    let pose: Pose
    var body: some View {
        NavigationLink(destination: PoseDetailView(pose: pose)) {
            Image(pose.thumpnailName)
            VStack(alignment: .leading) {
                Text(pose.name)
                Text(pose.sanskritName)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView( poses: testData)
            ContentView( poses: testData)
                .environment(\.colorScheme, .dark)
            ContentView( poses: testData)
                .environment(\.sizeCategory, .accessibilityExtraLarge)
            ContentView( poses: testData)
                .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
        }
    }
}
