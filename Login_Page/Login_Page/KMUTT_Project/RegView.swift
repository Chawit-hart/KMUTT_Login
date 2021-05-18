//
//  RegView.swift
//  KMUTT_Project
//
//  Created by chawit on 18/5/2564 BE.
//

import SwiftUI

struct RegView: View {
    @State var email = ""
    @State var password1 = ""
    @State var password2 = ""
    @State var hidde = false
    @State var isLogin = false
    @State var SignIn = false
    var body: some View {
        
        
        if isLogin{
            LoginView()
        }else if SignIn{
            LoginView()
        }else{
            
            
            VStack(spacing: 15) {
                Spacer()
                Text("ECT KMUTT Sign UP").font(.system(size: 45,weight: .semibold))
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
                        TextField("Password", text: $password1)
                    }else {
                        Image(systemName: "lock")
                            .foregroundColor(.gray)
                        SecureField("Password", text: $password1)
                    }
                    Button(action: {
                        self.hidde.toggle()
                    }) { Image(systemName: self.hidde ? "eye.fill": "eye.slash.fill")
                    }
                }
                .padding(.all, 20)
                .background(Color.white)
                .cornerRadius(8)
                .padding(.horizontal, 20)
                
                HStack{
                    if self.hidde{
                        
                        Image(systemName: "lock")
                            .foregroundColor(.gray)
                        TextField("Password", text: $password2)
                    }else {
                        Image(systemName: "lock")
                            .foregroundColor(.gray)
                        SecureField("Password", text: $password2)
                    }
                    Button(action: {
                        self.hidde.toggle()
                    }) { Image(systemName: self.hidde ? "eye.fill": "eye.slash.fill")
                    }
                }
                .padding(.all, 20)
                .background(Color.white)
                .cornerRadius(8)
                .padding(.horizontal, 20)
                
                Button(action: {
                    if password1 == password2{
                        self.isLogin = true
                        print("true")
                    }else {
                        Text("Email or Password is incorrect")
                    }
                }) {
                    Text("Sign Up")
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .medium))
                }.frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(Color.orange.opacity(0.9))
                .cornerRadius(8)
                .padding(.horizontal, 20)
                
                HStack{
                    
                    Button(action :{
                        if SignIn == false{
                            self.SignIn = true
                        }
                    }){Text("I have an account. Let me Sign In")}
                }.frame(maxWidth: .infinity, alignment: .trailing)
                    .foregroundColor(.white)
                
                Spacer()
                Spacer()
                
            }.background(Image("background_login").resizable()
                            .aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all))
            
            
            
        }
    }
    
    struct RegView_Previews: PreviewProvider {
        static var previews: some View {
            RegView()
        }
    }
}

