// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public struct DateConverter {

    public static func convertISO8601ToReadableDate(_ iso8601String: String) -> String? {
        let isoFormatter = ISO8601DateFormatter()
        isoFormatter.formatOptions = [.withInternetDateTime]

        guard let date = isoFormatter.date(from: iso8601String) else {
            print("Invalid date format")
            return nil
        }

        let newFormatter = DateFormatter()
        newFormatter.dateFormat = "EEEE, d MMMM yyyy"
        newFormatter.locale = Locale(identifier: "en_US_POSIX")

        return newFormatter.string(from: date)
    }
}
