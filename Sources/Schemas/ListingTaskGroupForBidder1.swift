import Foundation

public struct ListingTaskGroupForBidder1: Codable, Hashable, Sendable {
    public let mileageEstimated: Double?
    public let tasks: [ListingTaskForBidder1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        mileageEstimated: Double? = nil,
        tasks: [ListingTaskForBidder1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.mileageEstimated = mileageEstimated
        self.tasks = tasks
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.mileageEstimated = try container.decodeIfPresent(Double.self, forKey: .mileageEstimated)
        self.tasks = try container.decodeIfPresent([ListingTaskForBidder1].self, forKey: .tasks)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.mileageEstimated, forKey: .mileageEstimated)
        try container.encodeIfPresent(self.tasks, forKey: .tasks)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case mileageEstimated = "mileage_estimated"
        case tasks
    }
}