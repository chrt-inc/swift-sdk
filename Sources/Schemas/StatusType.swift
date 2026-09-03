import Foundation

public enum StatusType: String, Codable, Hashable, CaseIterable, Sendable {
    case succeeded
    case failed
    case noReceivables = "no_receivables"
}