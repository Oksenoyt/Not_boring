//
//  TypeOfActivityView.swift
//  Not_boring
//
//  Created by Oksenoyt on 05.07.2023.
//

import SwiftUI

struct TypeOfActivityView: View {
    let typeActivity: TypeActivity
    @State var activity = "are you bored? press tte button"

    var body: some View {
        VStack {
            Text(typeActivity.rawValue)
            Spacer()
            Text(activity)
            Spacer()
            MainButtonView(typeActivity: typeActivity)
            Spacer()
        }
    }
}

struct TypeOfActivityView_Previews: PreviewProvider {
    static var previews: some View {
        TypeOfActivityView(typeActivity: .charity)
    }
}
