//
//  ContentView.swift
//  AboutMe
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var me = "Learn about me!"
    @State private var photo1 = "me"
    @State private var photo2 = "flowers"
    @State private var disc = "My name is Reshma Winter and I am goin to be a 10th grader at Newport High School. I am 15 years old and I was born on Febuary 12th."

    @State private var showPics = false
    @State private var showButton = true
    struct CustomColor {
        static let myColor = Color("Color 1")
    }
    var body: some View {
        ZStack{
            Color("Color")
                .ignoresSafeArea()
            
            VStack {
                //                HStack{
                //                    Image(c1)
                //                    Spacer()
                //                    Image(c2)
                //                }
                //                Spacer()
                //                HStack{
                //                    Image(c3)
                //                    Spacer()
                //                    Image(c4)
                //                }
                Spacer()
                Text(me)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.red)
                HStack{
                    Image(photo2)
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 100.0)
                    Spacer()
                    Image(photo2)
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 100.0)
                    Spacer()
                    Image(photo2)
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 100.0)
                }
                Image(photo1)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text(disc)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                
                
                if showPics {
                    Text("Click each image to learn about me!")
                        .fontWeight(.black)
                        .foregroundColor(Color.black)
                    VStack(spacing: 100){
                        HStack{
                            Spacer()
                            Image("dog")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100.0, height: 100.0)
                            Spacer()
                            Image("brother")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100.0, height: 100.0)
                            Spacer()
                        }
                        HStack{
                            Spacer()
                            Image("cooking")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100.0, height: 100.0)
                            Spacer()
                            Image("matcha")
                                .resizable(resizingMode: .stretch)
                                .frame(width: 100.0, height: 100.0)
                            Spacer()
                        }
                        Spacer()
                        
                    }
                    }
                    Button("Next ->"){
                        photo2 = ""
                        photo1 = ""
                        disc = ""
                        me = ""
                        self.showPics.toggle()
                        //                    c1 = "dog"
                        //                    c2 = "brother"
                        //                    c3 = "cooking"
                        //                    c4 = "matcha"
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(.purple)
                    Spacer()
            }
            .padding()
            .background(Rectangle())
            .foregroundColor(CustomColor.myColor)
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
