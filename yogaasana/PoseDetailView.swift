//
//  PoseDetailView.swift
//  yogaasana
//
//  Created by Viraj Thenuwara on 11/29/19.
//  Copyright © 2019 VTAPPS. All rights reserved.
//

import SwiftUI

struct PoseDetailView: View {
    let pose: Pose
    var body: some View {
        VStack {
            Image(pose.imageName)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            Text(pose.sanskritName)
                .bold()
        }
        .navigationBarTitle(pose.name)
    }
}

struct PoseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView { PoseDetailView(pose: testData[0]) }
            NavigationView { PoseDetailView(pose: testData[3]) }
        }
    }
}
