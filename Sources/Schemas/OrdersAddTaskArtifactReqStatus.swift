import Foundation

public enum OrdersAddTaskArtifactReqStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case staged
    case completed
}