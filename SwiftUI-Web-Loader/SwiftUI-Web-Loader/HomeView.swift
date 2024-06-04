//
//  HomeView.swift
//  SwiftUI-Web-Loader
//
//  Created by RANA  on 4/6/24.
//

import SwiftUI

struct HomeView: View {
    @State private var Items = [ WebViewModel(name: "Google", url: "https://google.com.bd"), WebViewModel(name: "Facebook", url: "https://facebook.com")]
    
    @State private var Input : String = ""
    @State private var IsEmpty  = false
    var body: some View {
        NavigationStack {
            VStack{
                HStack{
                    Text("URL")
                        .bold()
                        .frame(width: 40, height: 60)
                    TextField("Enter Website Url", text: $Input)
                    //.textFieldStyle(.roundedBorder)
                        .bold()
                        .textInputAutocapitalization(.never)
                        .padding()
                    //.border(Color.gray)
                        .background(RoundedRectangle(cornerRadius: 15).stroke())
                    
                    NavigationLink {
                        if !Input.isEmpty {
                            let value = StringCheck(original: Input).CheckandIncludeHTTPS()
                            let newItem = WebViewModel(url: value)
                            WebView(item: newItem)
                        }
                        
                    } label: {
                        Text("Go")
                            .padding()
                            .bold()
                            .foregroundStyle(.white)
                            .frame(width: 56, height: 51)
                            .background(RoundedRectangle(cornerRadius: 15))
                    }
                    
                    
                }
                
                
                .padding()
                Spacer()
                HStack (spacing: 30){
                    
                    ForEach(Items) { item in
                        
                        NavigationLink(destination: WebView(item: item)){
                            
                            VStack{
                                Text("\((item.name?.firstCharacter)! )")
                                    .padding()
                                    .background(Circle().stroke().fill(.blue).opacity(0.7))
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                Text(Items.first?.name ?? "Website")
                            }
                        }
                        .tint(.primary)
                        
                    }
                    
                    
                }
                .ignoresSafeArea()
                .padding(.bottom , 30)
                Spacer()
                
            }
            .background(LinearGradient(colors: [.blue, .brown ,.orange , .green, .gray], startPoint: .topLeading, endPoint: .bottomTrailing).opacity(0.5))
         
        }
        
        

    }
}

#Preview {
    HomeView()
}

extension String {
  var firstCharacter: String {
    return self.isEmpty ? "W" : String(self.first!)  // Use " " for empty string
  }
}
