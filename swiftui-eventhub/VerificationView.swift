//
//  VerificationView.swift
//  swiftui-eventhub
//
//  Created by afitra mamor on 17/04/23.
//

import SwiftUI
import Combine


struct VerificationView: View {
    @State private var otp0 : String = ""
    @State private var otp1 : String = ""
    @State private var otp2 : String = ""
    @State private var otp3 : String = ""
    let characterLimit = 2
    @State private var homeView : Bool = false
    
    
    
    var body: some View {
        
        VStack{
            HStack(spacing: 0.0){
                Text("Verification")
                    .fontWeight(.semibold)
                    .font(.system(size: 36))
                    .multilineTextAlignment(.leading)
                    .lineLimit(0)
                    .padding()
                Spacer()
            }
            .padding(.leading, -15.0)
            .padding(/*@START_MENU_TOKEN@*/.bottom, 10.0/*@END_MENU_TOKEN@*/)
            HStack{
                Text("We've send you verification\ncode on +62 089908990899")
                    .font(.system(size: 20))
                Spacer()
            }
            .padding(.bottom, 20.0)
            HStack{
                
                TextField("-", text: $otp0)
                    .multilineTextAlignment(TextAlignment.center)
                    .keyboardType(.numberPad)
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    .overlay(RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .stroke(Color.black, lineWidth: 1)
                    )
                    .onChange(of: otp0) { [otp0] newValue in
                        newValue.count > 1 ?  self.otp0 = otp0 : ()
                    }
                
                TextField("-", text: $otp1)
                    .multilineTextAlignment(TextAlignment.center)
                    .keyboardType(.numberPad)
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    .overlay(RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .stroke(Color.black, lineWidth: 1)
                    )
                    .onChange(of: otp1) { [otp1] newValue in
                        newValue.count > 1 ?  self.otp1 = otp1 : ()
                    }
                TextField("-", text: $otp2)
                    .multilineTextAlignment(TextAlignment.center)
                    .keyboardType(.numberPad)
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    .overlay(RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .stroke(Color.black, lineWidth: 1)
                    )
                    .onChange(of: otp2) { [otp2] newValue in
                        newValue.count > 1 ?  self.otp2 = otp2 : ()
                    }
                TextField("-", text: $otp3)
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(TextAlignment.center)
                
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    .overlay(RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .stroke(Color.black, lineWidth: 1)
                    )
                    .onChange(of: otp3) { [otp3] newValue in
                        newValue.count > 1 ?  self.otp3 = otp3 : ()
                    }
                
            }
            
            
            
            
            NavigationLink(destination: LoginView(), isActive: self.$homeView) {
                HStack {
                    Spacer()
                    Text("Continue")
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Spacer()
                    Image("right_arrow")
                    
                }
                .padding(.horizontal, 10.0)
            }
            
            .frame(width: 300, height: 65.0)
            .background(Color("primary"))
            .cornerRadius(15)
            .padding(.vertical,30)
            
            Text("Re-send  00:50")
            Spacer()
        }
        .padding(.horizontal, 10.0)
        
        
        
        
        
        
    }
    
}

struct VerificationView_Previews: PreviewProvider {
    static var previews: some View {
        VerificationView()
    }
}
