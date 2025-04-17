//
//  ParametresCartView.swift
//  LilacAppSwiftUI
//
//  Created by Nijat Naghiyev on 17.04.25.
//

import SwiftUI

struct ParametresCartView: View {
    @State var quantity: Int = 0

    var body: some View {
        VStack(spacing: 24) {
            HStack (alignment: .top, spacing: 42){
                Text("S")
                    .background(
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.brown)
                            .overlay(
                                Circle()
                                    .stroke(.lilac, lineWidth: 2)
                            ))
                
                
                Text("M")
                    .background(
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.white)
                            .overlay(
                                Circle()
                                    .stroke(.lilac, lineWidth: 2)
                            ))
                
                
                Text("L")
                    .background(
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.white)
                            .overlay(
                                Circle()
                                    .stroke(.lilac, lineWidth: 2)
                            ))
                
                
                Spacer()
                
                Button {
                    if quantity>1 {
                        quantity-=1
                    }
                } label: {
                    Text("-")
                        .background(
                            Circle()
                                .frame(width: 48, height: 48)
                                .foregroundStyle(.white)
                                .overlay(
                                    Circle()
                                        .stroke(.gray, lineWidth: 2)
                                ))
                }
                
                
                Text("\(quantity)")
                    .font(.title3)
                
                
                Button {
                    quantity+=1
                    
                    
                } label: {
                    Text("+")
                        .background(
                            Circle()
                                .frame(width: 48, height: 48)
                                .foregroundStyle(.white)
                                .overlay(
                                    Circle()
                                        .stroke(.gray, lineWidth: 2)
                                ))
                    
                }
                
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(16)
            .padding(.horizontal, 16)
            
            Button {
                
            } label: {
                Text("Add to Cart")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.lilac)
                    .foregroundColor(.white)
                    .cornerRadius(CGFloat(10))
                
                
                
            }
            .frame(height: 50)
            .padding(.horizontal, 16)
            
            
        }
    }
}

