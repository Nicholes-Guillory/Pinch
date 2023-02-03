//
//  InfoPanelView.swift
//  Pinch
//
//  Created by Nicholes Guillory on 12/13/22.
//

import SwiftUI

struct InfoPanelView: View {
    var scale: CGFloat
    var offset: CGSize
    
    @State private var isInfoPanelVisible: Bool = false
    
    var body: some View {
        ZStack{
            VStack{
               
                
                HStack {
                    // MARK: - HOTSPOT
                    Image(systemName: "circle.circle")
                        .symbolRenderingMode(.hierarchical)
                        .resizable()
                        .frame(width: 20, height: 30)
                        .onLongPressGesture(minimumDuration: 1) {
                            withAnimation(.easeOut) {
                                isInfoPanelVisible.toggle()
                            }
                        }
                }
                    
                 
                    
                    // MARK: - INFO PANEL
                    HStack(spacing: 2) {
                        Image(systemName: "arrow.up.left.and.arrow.down.right")
                        Text("\(scale)")
                        
                        Spacer()
                        
                        Image(systemName: "arrow.left.and.right")
                        Text("\(offset.width)")
                        
                        Spacer()
                        
                        Image(systemName: "arrow.up.and.down")
                        Text("\(offset.height)")
                        
                        Spacer()
                    }
                    .font(.footnote)
                    .padding(8)
                    .background(.ultraThickMaterial)
                    .cornerRadius(8)
                    .frame(width: 420)
                    .opacity(isInfoPanelVisible ? 1 : 0)
                    
                    Spacer()
                
            } // NAVIGATION
            .navigationViewStyle(.stack)
        }
    }
}

struct InfoPanelView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPanelView(scale: 1, offset: .zero)
            .preferredColorScheme(.dark
            )
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
