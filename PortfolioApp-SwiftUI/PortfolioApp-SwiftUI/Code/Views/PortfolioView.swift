//
//  ContentView.swift
//  PortfolioApp-SwiftUI
//
//  Created by Ahmed Fayeq on 12/01/2022.
//

import SwiftUI

struct PortfolioView: View {
    
    //MARK: -Variables
    var appModel = AppModel()
    
    
    //MARK: -Views
    var body: some View {
        ZStack{
            Color(UIColor.systemBackground).ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    
                    HeaderView(appModel: appModel)
                    
                }).padding(24)
            })
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .colorScheme(.dark)
    }
}
