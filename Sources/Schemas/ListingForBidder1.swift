import Foundation

public struct ListingForBidder1: Codable, Hashable, Sendable {
    public let listing: ListingLimitedForBidder1
    public let taskGroup: ListingTaskGroupForBidder1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        listing: ListingLimitedForBidder1,
        taskGroup: ListingTaskGroupForBidder1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.listing = listing
        self.taskGroup = taskGroup
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.listing = try container.decode(ListingLimitedForBidder1.self, forKey: .listing)
        self.taskGroup = try container.decode(ListingTaskGroupForBidder1.self, forKey: .taskGroup)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.listing, forKey: .listing)
        try container.encode(self.taskGroup, forKey: .taskGroup)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case listing
        case taskGroup = "task_group"
    }
}