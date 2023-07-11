//
//  PersonView.swift
//  Not_boring
//
//  Created by Oksenoyt on 02.07.2023.
//

import SwiftUI

struct RandomActivity: View {
    private let typeActivity = TypeActivity .general

    @StateObject private var viewModel = ViewModel()

    var body: some View {
        ZStack {
            Image("fon")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.9)
                .offset(y: 40)

            VStack {
                Spacer()
                Text(viewModel.activity?.activity ?? "")
                Spacer()
                Spacer()
                Spacer()
                HStack {
                    MainButtonView(typeActivity: typeActivity, viewModel: viewModel)
                    Spacer()
                }
                .offset(y: 4)
                .padding(25)
                Spacer()
                Spacer()
            }
        }
    }
}


struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        RandomActivity()
    }
}