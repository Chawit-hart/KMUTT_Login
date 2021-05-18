//
//  MainView.swift
//  KMUTT_Project
//
//  Created by chawit on 18/5/2564 BE.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        HStack{
            
        VStack{
            Spacer()
            Text("Hello").font(.system(size: 50,weight: .semibold))
                .foregroundColor(.black)
            Spacer()
        }.background(Image("background_MainView")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
        ).edgesIgnoringSafeArea(.all)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
