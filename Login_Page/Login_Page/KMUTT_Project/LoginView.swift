//
//  LoginView.swift
//  KMUTT_Project
//
//  Created by chawit on 16/5/2564 BE.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    @State var isLogin = false
    @State var hidde = false
    @State var signUp = false
    
    var body: some View {
        if isLogin{
            MainView()
        }else if signUp{
            RegView()
        }else{
            
            VStack(spacing: 15){
                Spacer()
                Text("ECT KMUTT Sign In")
                    .font(.system(size: 45,weight: .semibold))
                    .foregroundColor(.white)
                HStack{
                    Image(systemName: "envelope")
                        .foregroundColor(.gray)
                    TextField("Email", text: $email)
                }
                .padding(.all, 20)
                .background(Color.white)
                .cornerRadius(8)
                .padding(.horizontal, 20)
                
                
                HStack{
                    if self.hidde{
                        
                        Image(systemName: "lock")
                            .foregroundColor(.gray)
                        TextField("Password", text: $password)
                        
                    } else {
                        Image(systemName: "lock")
                            .foregroundColor(.gray)
                        SecureField("Password", text: $password)
                    }
                    
                    Button(action: {
                        self.hidde.toggle()
                    }) {
                        Image(systemName: self.hidde ? "eye.fill": "eye.slash.fill")
                    }
                }
                .padding(.all, 20)
                .background(Color.white)
                .cornerRadius(8)
                .padding(.horizontal, 20)
                
                Button(action: {
                    if self.email == "test1@test.com" && self.password == "testtest1"{
                        self.isLogin = true
                        print("true")
                    }else if self.email == "test2@test.com" && self.password == "testtest2"{
                        self.isLogin = true
                        print("true")
                    }
                    else {
                        Text("Email or Password is incorrect")
                    }
                }) {
                    Text("Sign In")
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .medium))
                }.frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(Color.orange.opacity(0.9))
                .cornerRadius(8)
                .padding(.horizontal, 20)
                
                
                    HStack{
                        
                        Button(action :{
                            if signUp == false{
                                self.signUp = true
                            }
                        }){Text("I don't have an account. Sign Up")}
                    }.frame(maxWidth: .infinity, alignment: .trailing)
                        .foregroundColor(.white)
                
                
                Spacer()
                Spacer()
            }
            .background(
                Image("background_login")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            ).edgesIgnoringSafeArea(.all)
        }
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
}
