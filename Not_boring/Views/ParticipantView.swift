//
//  ParticipantView.swift
//  Not_boring
//
//  Created by Oksenoyt on 02.07.2023.
//

import SwiftUI

struct ParticipantView: View {
    private let option = ["for one", "for company"]

    private var typeActivity: TypeActivity {
        viewModel.participantTypeActivity
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
//                .offset(y: 18)
//                .padding(25)
//                Spacer()
//                Spacer()
//            }
        }
    }
}

struct ParticipantView_Previews: PreviewProvider {
    static var previews: some View {
        ParticipantView()
    }
}
