//
//  Profile.swift
//  Food
//
//  Created by Kirpa Chahal on 8/10/22.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        
        ZStack {
                        Color(#colorLiteral(red: 0.1747280955, green: 0.9021687508, blue: 0.318703413, alpha: 1))
                            .frame(width: 600, height: 600)
                            .edgesIgnoringSafeArea(.all)
                            .cornerRadius(300)
                            .offset(x: -50, y: -350)
                        Color(#colorLiteral(red: 0.1775636971, green: 0.9617715478, blue: 0.3371206522, alpha: 1))
                           .frame(width: 300, height: 300)
                            .edgesIgnoringSafeArea(.all)
                            .cornerRadius(300)
                            .offset(x: -100, y: -250)
            Spacer()
            HStack{
                Spacer()
            VStack {
                
                
                Text(verbatim:"Rylee Simpson")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(.primary)
                
                Spacer()
                Text(verbatim:"250 Reward Points")
                                .font(.title2)
                                .fontWeight(.medium)
                
                Text("Your purchases have led to 25 trees planted!")
                Text("Tree Rank: 12th in Nashville")
                
                List{
                Text("             My Rewards")
                Text("             City Tree Leaderboard")
                Text("             Reward Exchange")
                Text("             Favorite Orders")
                Text("             Previous Orders")
                Text("             Payment Information")
                }
                
                Spacer()
            }
                
            .padding()
            .foregroundColor(.primary)
            }
        }
        
        
        
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
