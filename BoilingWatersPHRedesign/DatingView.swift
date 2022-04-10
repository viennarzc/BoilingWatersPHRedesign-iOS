//
//  DatingView.swift
//  BoilingWatersPHRedesign
//
//  Created by Viennarz Curtiz on 4/10/22.
//

import SwiftUI

struct DatingView: View {
    @State private var selectedSegment = 0
    
    var body: some View {
        NavigationView {
            VStack {
                
                Picker("What is your favorite color?", selection: $selectedSegment) {
                    Text("Matches").tag(0)
                    Text("My Likes").tag(1)
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)
                
                GeometryReader { geo in
                    ZStack {
                        
                        Image("man1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geo.size.width, alignment: .center)
                        
                        LinearGradient(gradient: Gradient(colors: [.black.opacity(0.5), .clear]), startPoint: .bottom, endPoint: .center)
                        
                        VStack(alignment: .leading) {
                            Text("Compatibilty: 99%")
                                .font(.caption.weight(.semibold))
                                .padding(4)
                                .background(Capsule().fill(LinearGradient(gradient: Gradient(colors: [.red, .red.opacity(0.7), .black.opacity(0.5)]), startPoint: .leading, endPoint: .trailing)))
                            
                            Spacer()
                            HStack {
                                Text("Daniel Padilla")
                                    .font(.largeTitle.weight(.semibold))
                                    
                                Spacer()
                            }
                            
                            Text("24 Years Old")
                            Text("Ayala Avenue, Makati City")
                        }
                        .foregroundColor(.white)
                        .padding()
                    

                    }
                    .frame(height: geo.size.height, alignment: .top)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    
                    
                }
                .padding()
                .navigationTitle("Find a Match")
                
                Button {
                    
                } label: {
                    Text("Know Me More")
                        .font(.title2.weight(.semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .background(Capsule().fill(Color.red))
                }
                .padding(.horizontal)
                
                Spacer(minLength: 32)
                
            }

        }
        .navigationBarTitleDisplayMode(.large)
    }
}

struct DatingView_Previews: PreviewProvider {
    static var previews: some View {
        DatingView()
    }
}
