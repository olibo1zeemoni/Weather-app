//
//  ContentView.swift
//  weather-app
//
//  Created by Olibo moni on 23/10/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue,.white]), startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                 
                Text("Cupertino, Ca")
                    .font(.system(size:32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                        .padding(.bottom)
                    
                }
                
        HStack{
                
            WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 70 )
            
            WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 66 )
            
            WeatherDayView(dayOfWeek: "THU", imageName: "wind", temperature: 60 )
            
            WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 62 )
            
            WeatherDayView(dayOfWeek: "SAT", imageName: "moon.stars.fill", temperature: 72 )
                
                
        }
                Spacer()
        }
                
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct WeatherDayView: View {
    
    var dayOfWeek : String
    var imageName : String
    var temperature : Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size:22, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding()
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 30, weight: .medium))
                .foregroundColor(.white)
                .padding(.bottom)
        }
    }
}
