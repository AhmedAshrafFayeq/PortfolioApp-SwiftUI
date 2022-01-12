//
//  ExperiencesView.swift
//  PortfolioApp-SwiftUI
//
//  Created by Ahmed Fayeq on 12/01/2022.
//

import SwiftUI

struct ExperiencesView: View {
    
    //MARK: -Variables
    var experiences: [Experience]
    @State var showExperiences = true
    
    //MARK: -Views
    var body: some View {
        VStack(alignment: .leading, spacing: 24){
            HStack(spacing: 16){
                Text("Experiences")
                    .font(Montserrat.bold.font(size: 21))
                    .opacity(0.9)
                
                Button{
                    withAnimation(.easeIn(duration: 0.35)){
                        showExperiences.toggle()
                    }
                } label:{
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showExperiences ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }.padding(.bottom, 14)
            if showExperiences{
                ForEach(experiences) { experience in
                    ExperienceView(experience: experience)
                }

            }
        }
    }
}

struct ExperiencesView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{ proxy in
            ExperiencesView(experiences: AppModel().portfolio.experiences)
                .padding(24)
        }
    }
}
