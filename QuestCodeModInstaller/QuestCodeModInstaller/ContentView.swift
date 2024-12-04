//
//  ContentView.swift
//  QuestCodeModInstaller
//
//  Created by Kiran Hayden on 12/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            Tab("Home", systemImage: "house") {
                VStack{
                    Text("Quest Code Mod Installer")
                        .bold()
                        .font(.system(size: 12))
                    Text("By DarkCat736")
                    Divider()
                        .padding(10)
                    Spacer()
                }
                .padding(15)
            }
            
            Tab("ADB Status", systemImage: "chevron.left.slash.chevron.right") {
                CheckADB()
            }
                // More tabs...
        }
    }
}

struct CheckADB: View {
    var body: some View {
        @State var ADBCheckActive = false
        VStack {
            Text("Check ADB Status")
                .font(.system(size: 12))
            Text("ADB is required for this program to function.")
            Divider()
                .padding(10)
            Button("Begin ADB Check") {
                CheckADBProgress()
            }
        }
        .padding(15)
    }
}

struct CheckADBProgress: View {
    var body: some View {
        ProgressView("Initializing Terminal...", value: 0.01, total: 100)
    }
}

#Preview {
    CheckADB()
}
