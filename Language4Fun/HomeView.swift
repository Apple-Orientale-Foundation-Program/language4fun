//
//  HomeView.swift
//  Language4Fun
//
//  Created by Fabio Striano on 22/10/2020.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("Home")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                NavigationLink(
                    destination: WorldView(),
                    label: {
                        Image(systemName: "play.circle").resizable()
                            .foregroundColor(.orange)
                            .frame(width: 100, height: 100, alignment: .center)
                            .position(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/1.3)
                    }
                )
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPad Pro (12.9-inch) (4th generation)")
    }
}
    
