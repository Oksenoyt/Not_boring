//
//  GeneralView.swift
//  Not_boring
//
//  Created by Oksenoyt on 02.07.2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = ViewModel()
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    let width = UIScreen.main.bounds.width / 2
    @State var type: TypeActivity = .cooking

    var body: some View {
        ZStack {
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 1, lineCap: .round, dash: [5]))
                .frame(width: width * 1.55)
                .offset(y: -width / 2.5 )
                .opacity(0.2)
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 1, lineCap: .round, dash: [5]))
                .frame(width: width)
                .offset(y: -width / 2.5 )
                .opacity(0.2)
            ForEach(Array(TypeActivity.allCases.prefix(4)).indices, id: \.self) { index in
                let activity = TypeActivity.allCases[index]
                    Button {
                        viewModel.fetchData(typeActivity: activity)
                        type = activity
                    } label: {
                        Image(systemName: activity.rawValue)
                            .resizable()
                            .opacity(0.9)
                            .foregroundColor(.black.opacity(0.9))
                            .frame(width: 40, height: 40)
                    }
                    .offset(x: -width/1.3)
                    .rotationEffect(.init(degrees: Double(index) * 70))

                }
            .offset(y: -width / 2.5 )
            ForEach(Array(TypeActivity.allCases.suffix(8)).indices, id: \.self) { index in
                let activity = Array(TypeActivity.allCases.suffix(8))[index]
                    Button {
                        viewModel.fetchData(typeActivity: activity)
                        type = activity
                    } label: {
                        Image(systemName: activity.rawValue)
                            .resizable()
                            .opacity(0.9)
                            .foregroundColor(.black.opacity(0.9))
                            .frame(width: 35, height: 35)
                    }
                    .offset(x: -width/2)
                    .rotationEffect(.init(degrees: Double(index) * 45))

                }
            .offset(y: -width / 2.5 )

            Spacer()
                    Image(systemName: "person.fill").resizable()
                .frame(width: 60, height: 60, alignment: .center)
                .foregroundColor(CustomColor.pastelSharpGreen)
                .offset(y: -width / 2.3)
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Don't know what to do?")
                            .font(.title)
                        Text("select activity type")
                    }
                    Spacer()
                }
                Spacer()
                ExtractedView(type: type)
                    .environmentObject(viewModel)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct ExtractedView: View {
    var type: TypeActivity

    @EnvironmentObject private var viewModel: ViewModel

    var body: some View {

        VStack(spacing: 16) {
                HStack {
                    Text("Activity of the day")
                        .font(.title)
                    Spacer()
                }
                HStack {
                Text("Category")
                        .bold()
                    Spacer()
                }
            HStack {
                Text(viewModel.activity?.activity ?? "")
                    .frame(height: 60)
                    .opacity(0.7)
                Spacer()
            }
            }
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 200)
            .background(.black.opacity(0.9))
            .cornerRadius(30)
    }
}
