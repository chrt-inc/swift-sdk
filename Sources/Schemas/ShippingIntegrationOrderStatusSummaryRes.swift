import Foundation

/// Order counts per unified status, for the dashboard and the table widget.
public struct ShippingIntegrationOrderStatusSummaryRes: Codable, Hashable, Sendable {
    public let cancelledCount: Int
    public let completedCount: Int
    public let exceptionCount: Int
    public let inProgressCount: Int
    public let stagedCount: Int
    public let totalCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cancelledCount: Int,
        completedCount: Int,
        exceptionCount: Int,
        inProgressCount: Int,
        stagedCount: Int,
        totalCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cancelledCount = cancelledCount
        self.completedCount = completedCount
        self.exceptionCount = exceptionCount
        self.inProgressCount = inProgressCount
        self.stagedCount = stagedCount
        self.totalCount = totalCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cancelledCount = try container.decode(Int.self, forKey: .cancelledCount)
        self.completedCount = try container.decode(Int.self, forKey: .completedCount)
        self.exceptionCount = try container.decode(Int.self, forKey: .exceptionCount)
        self.inProgressCount = try container.decode(Int.self, forKey: .inProgressCount)
        self.stagedCount = try container.decode(Int.self, forKey: .stagedCount)
        self.totalCount = try container.decode(Int.self, forKey: .totalCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.cancelledCount, forKey: .cancelledCount)
        try container.encode(self.completedCount, forKey: .completedCount)
        try container.encode(self.exceptionCount, forKey: .exceptionCount)
        try container.encode(self.inProgressCount, forKey: .inProgressCount)
        try container.encode(self.stagedCount, forKey: .stagedCount)
        try container.encode(self.totalCount, forKey: .totalCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cancelledCount = "cancelled_count"
        case completedCount = "completed_count"
        case exceptionCount = "exception_count"
        case inProgressCount = "in_progress_count"
        case stagedCount = "staged_count"
        case totalCount = "total_count"
    }
}