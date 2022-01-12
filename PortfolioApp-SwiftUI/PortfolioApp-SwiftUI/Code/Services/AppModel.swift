//
//  AppModel.swift
//  PortfolioApp-SwiftUI
//
//  Created by Ahmed Fayeq on 12/01/2022.
//

import Foundation

//ObservableObject protocol: viewModel can be passed and modified by other views
class AppModel: ObservableObject{
    var portfolio: Portfolio = Portfolio(name: "Ahmed Fayeq", role: "iOS Developer", description: "Immensely passionate about iOS and related technologies, I am also a UI/UX enthusiast, and I love to tinker with tech", location: "Cairo, Egypt", skills: [
        Skill(id: UUID().uuidString, skillName: "iOS", image: "iphone"),
        Skill(id: UUID().uuidString, skillName: "Swift 5", image: "swift"),
        Skill(id: UUID().uuidString, skillName: "WatchesOs", image: "applewatch"),
        Skill(id: UUID().uuidString, skillName: "UI / UX", image: "hand.tap.fill"),
        Skill(id: UUID().uuidString, skillName: "Editing", image: "wand.and.rays")
    
    ], experiences: [
        Experience(id: UUID().uuidString, companyName: "Vodafone Intelligent Solution _VOIS", role: "iOS Developer", duration: "Aug 2020 - Present"),
        Experience(id: UUID().uuidString, companyName: "Giza Systems", role: "iOS Developer", duration: "Jul 2019 - Jul 2021")
    ])
}
