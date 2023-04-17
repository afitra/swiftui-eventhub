//
//  SignupView.swift
//  swiftui-eventhub
//
//  Created by afitra mamor on 17/04/23.
//

import SwiftUI

struct SignupView: View {
    @State private var name : String = ""
    @State private var email : String = ""
    @State private var pass1 : String = ""
    @State private var pass2 : String = ""
    @State private var isToggle : Bool = true
    @State private var isShowingDetailView: Bool = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack{
            
            HStack{
                Text("Sign up").font(.system(size: 20)).fontWeight(.semibold)
                Spacer()
            }
            HStack {
                Image(systemName: "person")
                    .frame(width: 30.0, height: 30.0)
                    .font(.system(size: 25))
                    .foregroundColor(Color.black)
                TextField("Full name", text: self.$name)
            }.padding()
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                .overlay(RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .stroke(Color.black, lineWidth: 1)
                )
            
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
                SecureField("Your Password", text: self.$pass1)
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
            HStack {
                Image(systemName: "lock")
                    .frame(width: 30.0, height: 30.0)
                    .font(.system(size: 25))
                    .foregroundColor(Color.black)
                SecureField("Confirm Your Password", text: self.$pass2)
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
     
            Button(action: {
                print("Button Sign in")
            }) {
                HStack {
                    Spacer()
                    Text("Sign in")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                    Spacer()
                    Image("right_arrow")
                    
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
            }
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
                Text("Already Have an Account? ")
               Button(action: {
                   presentationMode.wrappedValue.dismiss()
               }, label:{ Text("Sign in")})
                .frame(width: 60.0, height: 60.0)
                .foregroundColor(Color.blue)
                
                
            }
            .padding(.horizontal, 30.0)
            
        }
        .padding(.horizontal, 20.0)
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
