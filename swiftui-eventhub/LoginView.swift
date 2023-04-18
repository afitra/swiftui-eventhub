//
//  LoginView.swift
//  swiftui-eventhub
//
//  Created by afitra mamor on 17/04/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email : String = ""
    @State private var pass : String = ""
    @State private var isToggle : Bool = true
    @State private var isShowingDetailView: Bool = false
    @State private var verifiedView: Bool = false
 
    var body: some View {
        NavigationView {
            VStack{
                Image("logo2")
                HStack{
                    Text("Sign in").font(.system(size: 20)).fontWeight(.semibold)
                    Spacer()
                }
                HStack {
                    Image(systemName: "mail")
                        .frame(width: 30.0, height: 30.0)
                        .font(.system(size: 25))
                        .foregroundColor(Color.black)
                    TextField("abc@mail.com", text: self.$email)
                }.padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    .overlay(RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .stroke(Color.black, lineWidth: 1)
                    )
                    .padding(.bottom,10)
                HStack {
                    Image(systemName: "lock")
                        .frame(width: 30.0, height: 30.0)
                        .font(.system(size: 25))
                        .foregroundColor(Color.black)
                    SecureField("Your Password", text: self.$pass)
                    Image(systemName: "eye.slash")
                        .frame(width: 30.0, height: 30.0)
                        .font(.system(size: 25))
                        .foregroundColor(Color.gray)
                }.padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    .overlay(RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .stroke(Color.black, lineWidth: 1)
                    )
                    .padding(.bottom,10)
                HStack{
                    Toggle("",isOn: self.$isToggle)
                        .labelsHidden()
                        .toggleStyle(SwitchToggleStyle(tint: Color("primary")))
                    Text("Remember me")
                    Spacer()
                    Text("Forgot assword?")
                } .padding(.bottom,30)
 
                NavigationLink(destination: VerificationView(), isActive: self.$verifiedView) {
                    HStack {
                        Spacer()
                        Text("Sign in")
                            .font(.system(size: 25))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Spacer()
                        Image("right_arrow")

                    }
                    .padding(.horizontal, 10.0)
                }
                .frame(width: .infinity, height: 65.0)
                .background(Color("primary"))
                .cornerRadius(15)
                .padding(.bottom,30)
                
                Text("OR")
                
                Button(action: {
                    print("Button Sign Google")
                }) {
                    HStack {
                        Spacer()
                        Image("google_icon")
                            .padding(.trailing, 10.0)
                        
                        Text("Login With Goole")
                            .font(.system(size: 20))
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                        Spacer()
                        
                        
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                }
                .background(Color(white: 0.843))
                .cornerRadius(15)
                .padding(.bottom,10)
                Button(action: {
                    print("Button Sign in Facebook")
                }) {
                    HStack {
                        Spacer()
                        Image("facebook_icon")
                            .padding(.trailing, 10.0)
                        
                        Text("Login With Facebook")
                            .font(.system(size: 20))
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                        Spacer()
                        
                        
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                }
                .background(Color(white: 0.843))
                .cornerRadius(15)
                
                HStack(spacing: 0.0){
                    Text("Dont Have an Account? ")
 
                    
                    NavigationLink(destination: SignupView(), isActive: self.$isShowingDetailView) {
                        Text("Sign up")
                    }
                    .frame(width: 60.0, height: 60.0)
                    .foregroundColor(Color.blue)
                    
                }
                .padding(.horizontal, 30.0)
                
            }
            .padding(.horizontal, 20.0)
        }
        .ignoresSafeArea()
      
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
