//
//  PersonView.swift
//  Not_boring
//
//  Created by Oksenoyt on 02.07.2023.
//

import SwiftUI

struct RandomActivity: View {
    private let typeActivity = TypeActivity .general
    private var content: String {
        viewModel.activity?.activity ?? ""
    }

    @State private var textOpacity = 1.0
    @StateObject private var viewModel = ViewModel()



    var body: some View {
        ZStack {
            VStack {
                TextView(opacity: $textOpacity, content: content)
                    .offset(y: -30)
                .padding()
                HStack {
                    MainButtonView(typeActivity: typeActivity, viewModel: viewModel)
                    Spacer()
                }
                .offset(y: 4)
                .padding(25)
            }
            Spacer()
//            VStack {
//                Spacer()
//                Spacer()
//                Spacer()
//                Spacer()
//                WindmillView()
//                Spacer()
//                Spacer()
//            }
        }
    }
}


struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        RandomActivity()
    }
}
