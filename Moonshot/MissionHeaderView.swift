//
//  MissionHeaderView.swift
//  Moonshot
//
//  Created by Adnan Bakaev  on 04/06/2025.
//

import SwiftUI

struct MissionHeaderView: View {
    let mission: Mission

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(mission.image)
                    .resizable()
                    .scaledToFit()
                    .containerRelativeFrame(.horizontal) { width, _ in width * 0.6 }
            }
            .frame(maxWidth: .infinity)


            VStack(alignment: .leading) {
                Rectangle()
                    .frame(height: 2)
                    .foregroundStyle(.lightBackground)
                    .padding(.vertical)

                Text("Mission Highlights")
                    .font(.title.bold())
                    .padding(.bottom, 5)

                Text(mission.description)

                Rectangle()
                    .frame(height: 2)
                    .foregroundStyle(.lightBackground)
                    .padding(.vertical)

                Text("Crew")
                    .font(.title.bold())
                    .padding(.bottom, 5)
            }
            .padding(.horizontal)
        }
    }
}


#Preview {
    
    MissionHeaderView(mission: testMissionForPreviews)
    
}
