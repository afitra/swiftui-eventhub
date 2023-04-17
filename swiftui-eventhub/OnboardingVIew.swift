//
//  OnboardingView.swift
//  swiftui-eventhub
//
//  Created by afitra mamor on 16/04/23.
//

import SwiftUI

struct OnboardingView: View {
    @State private var image_name = "app1"
    @State private var image_count = 1
    
    func changeImage(mode: Bool) ->Bool {
        if(mode){
            self.image_count += 1
        }else{
            self.image_count -= 1
        }
        
        if self.image_count < 1 {
            self.image_count = 1
        }
        if(self.image_count > 3 ){
            self.image_count = 4
        }
    
        return mode
    }
    var body: some View {
        
        return Group{
            if(self.image_count == 4){
                LoginView()
            }else{
                VStack{
                    Spacer()
                    Image("app\(self.image_count)")
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(Color("primary"))
                            .font(.largeTitle)
                            .padding(20)
                            .background(RoundedCorner(color: Color("primary"), tl: 30, tr: 30, bl: 0, br: 0))
                            .ignoresSafeArea()
                        VStack{
                            Text(" Explore Upcoming and\nNearby Events ")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 10.0)
                            Text("In publishing nd graphic design, lorem is\nplaceholder text commonly")
                                .foregroundColor(Color(hue: 1.0, saturation: 0.021, brightness: 0.87))
                                .multilineTextAlignment(.center)
                            
                            HStack{
                                Button(action: {
                                    print("Skip button")
                                    changeImage(mode: false)
                                }, label:{
                                    Text("Skip")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                    
                                })
                                .foregroundColor(Color.white)
                                Spacer()
                                Text(". . .")
                                    .font(.system(size: 60))
                                    .foregroundColor(Color.white)
                                    .padding(.bottom, -10.0)
                                Spacer()
                                Button(action: {
                                    print("Next button")
                                    changeImage(mode: true)
                                }, label:{
                                    Text("Next")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                })
                                .foregroundColor(Color.white)
                            }
                            .padding(.horizontal, 25.0)
                            
                            
                        }
                    }
                    
                }
            }
        }
        
        
        
        
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
