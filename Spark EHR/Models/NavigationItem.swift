//
//  NavigationItem.swift
//  Spark EHR
//
//  Created by Wascar Gonzalez on 7/4/26.
//

import Foundation

enum NavigationItem: String, CaseIterable, Identifiable, Hashable {
    case dashboard
    case patients
    case radiology
    case pharmacy
    case reports
    case settings

    var id: String { rawValue }

    var title: String {
        switch self {
        case .dashboard:
            return "Dashboard"
        case .patients:
            return "Patients"
        case .radiology:
            return "Radiology"
        case .pharmacy:
            return "Pharmacy"
        case .reports:
            return "Reports"
        case .settings:
            return "Settings"
        }
    }

    var icon: String {
        switch self {
        case .dashboard:
            return "square.grid.2x2.fill"

        case .patients:
            return "person.3.fill"

        case .radiology:
            return "waveform.path.ecg"

        case .pharmacy:
            return "cross.case.fill"

        case .reports:
            return "chart.bar.fill"

        case .settings:
            return "gearshape.fill"
        }
    }
}
