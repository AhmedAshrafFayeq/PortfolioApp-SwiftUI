//
//  Portfolio.swift
//  PortfolioApp-SwiftUI
//
//  Created by Ahmed Fayeq on 12/01/2022.
//

import Foundation

//MARK: -Skill

//Identifiable helps to use model in foreach loop, it requires a variable name id
struct Skill: Identifiable {
    let id, skillName, image: String
}

//MARK: -Experience
struct Experience: Identifiable {
    let id, companyName, role, duration: String
}

//MARK: -Portfolio
struct Portfolio {
    let name, role, description, location: String
    let skills: [Skill]
    let experiences: [Experience]
}
