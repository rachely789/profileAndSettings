//
//  ProfileView.swift
//  profileAndSettings
//
//  Created by Rachel Yoon on 8/2/23.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    @State private var showEditProfile = false
    @State private var showAccomplishments = true

    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
    
    var body: some View {
        ScrollView {
            //Profile
            VStack {
                //Name and Pronouns
                HStack {
                    Image(user.profileImageUrl ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100.0, height: 100.0)
                        .clipShape(Circle())
                    
                    
                    VStack {
                        if let fullname = user.fullname {
                            Text(fullname)
                                .font(.headline)
                                .fontWeight(.semibold)
                        }
                        
                        if let bio = user.bio {
                            Text(bio)
                                .font(.footnote)
                        }
                        
                    }
                    .frame(alignment: .leading)
                    .padding(.horizontal)
                    
                    Spacer()
                    
                    Button(action: {
                        showEditProfile.toggle()
                    }) {
                        Text("Edit")
                            .foregroundColor(Color.black)
                            .frame(width: 40, height: 32)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth:1))
                    }
                    
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 50.0/*@END_MENU_TOKEN@*/)
                
                //Followers
                UserStatView(value: 20, title: "Followers")
                
                HStack {
                    Image("DefaultPFP")
                        .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50.0, height: 50.0)
                    Image("DefaultPFP")
                        .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50.0, height: 50.0)
                    Image("DefaultPFP")
                        .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50.0, height: 50.0)
                    Image("DefaultPFP")
                        .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50.0, height: 50.0)
                    Image("DefaultPFP")
                        .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50.0, height: 50.0)
                }
                
                
                Button("More") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                
                .padding(.bottom, 20.0)
                
                //Following
                UserStatView(value: 10, title: "Following")
                
                HStack {
                    Image("DefaultPFP")
                        .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50.0, height: 50.0)
                    Image("DefaultPFP")
                        .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50.0, height: 50.0)
                    Image("DefaultPFP")
                        .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50.0, height: 50.0)
                    Image("DefaultPFP")
                        .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50.0, height: 50.0)
                    Image("DefaultPFP")
                        .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50.0, height: 50.0)
                }
                
                //button
                Button("More") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                
                
                .padding(.bottom, 50.0)
                
                //Accomplishments scroll page
                
                if showAccomplishments {
                    HStack {
                        Text("Accomplishments")
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }
                    .padding(.horizontal, 50.0)
                    
                    
                    //Accomplishment gridview
                    
                    LazyVGrid(columns: gridItems) {
                        ForEach(0 ... 15, id: \.self) {index in
                            Image("mathhw")
                                .resizable()
                                .frame(width: 123.0, height: 123.0)
                                .scaledToFill()
                        }
                    }
                }
                
            }
            
            
            .fullScreenCover(isPresented:  $showEditProfile) {
                EditProfileView(user: user)
            }
            
        }
    }
    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView(user: User.MOCK_USERS[0])
        }
    }
}
