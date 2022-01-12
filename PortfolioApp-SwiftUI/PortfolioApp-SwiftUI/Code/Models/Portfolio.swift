//
//  Portfolio.swift
//  PortfolioApp-SwiftUI
//
//  Created by Ahmed Fayeq on 12/01/2022.
//

import Foundation

//mark: -Skill

//Identifiable helps to use model in foreach loop, it requires a variable name id
struct skill: Identifiable {
    let id, skillName, image: String
}

//mark: -Experience
struct Experience: Identifiable {
    let id, companyName, role, duration: String
}

//mark: -Portfolio
struct Portfolio {
    let name, role, description, location: String
    let skills: [skill]
    let experiences: [Experience]
}
