

import SwiftUI

struct CheckOut: View {
    @State var hero = false
    @State var data = SocialCard
  
                var body: some View {
                    VStack {
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                SearchBarIG()
                                
                                //Our picks
                                VStack{
                                    HStack {
                                        Text("Instagram Pics")
                                            .bold()
                                            .multilineTextAlignment(.trailing)
                                            .padding(.leading, 20)
                                        
                                        Spacer()
                                        Text("View all >")
                                            .multilineTextAlignment(.leading)
                                            .foregroundColor(Color(#colorLiteral(red: 0.0580881, green: 0.90593573, blue: 0.3403331637, alpha: 1)))
                                            .padding(.trailing, 20)
                                    }
                                    .opacity(self.hero ? 0 : 1)
                                    
                                    
                                    // Card View
                                    VStack(spacing: 100) {
                                        ForEach(0..<self.data.count){i in
                                            GeometryReader{g in
                                                OurPicks(card: self.$data[i], hero: self.$hero)
                                                    
                                                    .offset(y: self.data[i].expand ? -g.frame(in: .global).minY : 0)
                                                    .opacity(self.hero ? (self.data[i].expand ? 1 : 0) : 1)
                                                    .onTapGesture {
                                                        
                                                        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0)){
                                                            if !self.data[i].expand{
                                                                self.hero.toggle()
                                                                self.data[i].expand.toggle()
                                                            }
                                                        }
                                                        
                                                    }
                                                
                                            }
                                            // going to increase height based on expand...
                                            .frame(height: self.data[i].expand ? UIScreen.main.bounds.height : 250)
                                            .simultaneousGesture(DragGesture(minimumDistance: self.data[i].expand ? 0 : 800).onChanged({ (_) in
                                                
                                                print("dragging")
                                            }))
                                        }
                                        
                                        
                                    }
                                    
                                }.padding(.top, 50)
                                .padding(.bottom, 150)
                                
                                Spacer()
                                
                                
                            }
                            .background(Color(#colorLiteral(red: 0.9843164086, green: 0.9843164086, blue: 0.9843164086, alpha: 1)))
                            
                        }
                        .background(Color(#colorLiteral(red: 0.9580881, green: 0.10593573, blue: 0.3403331637, alpha: 1)))
                        .edgesIgnoringSafeArea(.top)
                        
                        
                    }
                }
            }
            //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            
            
            //Green Circles Pretty
//            ZStack {
//                Color(#colorLiteral(red: 0.1747280955, green: 0.9021687508, blue: 0.318703413, alpha: 1))
//                    .frame(width: 600, height: 600)
//                    .edgesIgnoringSafeArea(.all)
//                    .cornerRadius(300)
//                    .offset(x: -50, y: -350)
//                Color(#colorLiteral(red: 0.1775636971, green: 0.9617715478, blue: 0.3371206522, alpha: 1))
//                    .frame(width: 300, height: 300)
//                    .edgesIgnoringSafeArea(.all)
//                    .cornerRadius(300)
//                    .offset(x: -100, y: -250)
                //END OF GREEN CIRCLES
                


struct CheckOut_Previews: PreviewProvider {
    static var previews: some View {
        CheckOut()
    }
}
