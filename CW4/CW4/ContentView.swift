//
//  ContentView.swift
//  CW4
//
//  Created by aisha abdulaziz on 19/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var grade = ""
    @State var result = ""
    
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            
            VStack{
                Text("Grade Calculator")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                
                Image("calculator")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                
                TextField("Enter your grade", text: $grade)
                    .font(.title2)
                    .foregroundColor(.white)
                

                
                Text("Calculate your grade")
                    .font(.title2)
                    .foregroundColor(.white)
                    .onTapGesture {
                        if Int(grade) ?? 0 >= 90 {
                            result = "Excellent"
                        } else if Int(grade) ?? 0 >= 80 {
                            result = "Very good"
                        } else if Int(grade) ?? 0 >= 70 {
                            result = "Good"
                        } else if Int(grade) ?? 0 >= 60 {
                            result = "Acceptable"
                        }
                    }
                
                Text("Your result is")
                    .font(.title2)
                    .foregroundColor(.white)
                
                
                Text(result)
                    .font(.title2)
                    .foregroundColor(.white)
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
