//
//  ContentView.swift
//  Spark EHR
//
//  Created by Wascar Gonzalez on 7/4/26.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: NavigationItem? = .dashboard

    var body: some View {
        NavigationSplitView {
            List(NavigationItem.allCases, selection: $selection) { item in
                Label(item.title, systemImage: item.icon)
                    .tag(item)
            }
            .navigationTitle("Spark EHR")
        } detail: {
            switch selection {
            case .dashboard:
                DashboardView()
            case .patients:
                PatientsView()
            case .radiology:
                RadiologyView()
            case .pharmacy:
                PharmacyView()
            case .reports:
                ReportsView()
            case .settings:
                SettingsView()
            case nil:
                Text("Select a section")
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    ContentView()
}
