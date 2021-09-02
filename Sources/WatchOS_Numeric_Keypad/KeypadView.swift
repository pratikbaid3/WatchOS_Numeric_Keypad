//
//  SwiftUIView.swift
//  
//
//  Created by Pratik Baid on 02/09/21.
//

import SwiftUI
@available(watchOS 7.0, *)
struct WatchOS_Numeric_Keypad: View {
    @State var text:String=""
    var body: some View {
        VStack {
            Text(text)
            ScrollView {
                LazyVGrid(columns: [GridItem(.fixed(50)), GridItem(.fixed(50)), GridItem(.fixed(50))], alignment: .center, spacing: nil, pinnedViews: [], content: {
                    ForEach(1..<13) { item in
                        Button(action: {
                            text.append("\(item)")
                            print(text)
                        }, label: {
                            Text("\(item)")
                                .font(.headline)
                            
                        })
                    }
                })
            }
        }
        
    }
    
}

@available(watchOS 7.0, *)
struct WatchOS_Numeric_Keypad_Previews: PreviewProvider {
    static var previews: some View {
        WatchOS_Numeric_Keypad()
    }
}
