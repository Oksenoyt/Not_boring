//
//  TypeOfActivityView.swift
//  Not_boring
//
//  Created by Oksenoyt on 05.07.2023.
//

import SwiftUI

struct TypeOfActivityView: View {
    private let option =
    [
        "education",
        "recreational",
        "social",
        "diy",
        "charity",
        "cooking",
        "relaxation",
        "music",
        "busywork"
    ]

    private var typeActivity: TypeActivity {
        viewModel.typeActivity
    }

    private var content: String {
        viewModel.activity?.activity ?? ""
    }

    @State private var textOpacity = 1.0
    @StateObject private var viewModel = ViewModel()

    var body: some View {
        ZStack {
Spacer()
            
//            VStack {
//                Spacer()
//                TextView(opacity: $textOpacity, content: content)
//                .padding()
//                Spacer()
//                HStack {
//                    MainButtonView(typeActivity: typeActivity, viewModel: viewModel)
//                    Spacer()
//                    PickerView(viewModel: viewModel, options: option)
////                        .offset(y: -18)
//                }
//                .padding(25)
//                .offset(y: 18)
//                Spacer()
//                Spacer()
//            }
        }
    }
}

struct TypeOfActivityView_Previews: PreviewProvider {
    static var previews: some View {
        TypeOfActivityView()
    }
}
