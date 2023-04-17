//
//  SplashView.swift
//  swiftui-eventhub
//
//  Created by afitra mamor on 16/04/23.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive:Bool=false
    var body: some View {
        return Group{
            if isActive{
                OnboardingView()
            }else{
                HStack{
                    Spacer()
                    Image("logo1")
                    Spacer()
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
   
        
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
