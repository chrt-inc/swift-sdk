import Foundation

public enum TaskActionEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case pickup
    case deliver
    case transfer
    case consolidate
    case tender
    case recover
    case hold
    case other
}