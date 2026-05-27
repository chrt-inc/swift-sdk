import Foundation

/// One check entry declared in a Checklist.
/// 
/// Names a single catalog check; the event it fires on is derivable as
/// `entry.check.event` (see `CheckEnum.event`). Checklist-application
/// logic copies each `ChecklistCheck1` into the target Case as a `Check1`
/// in `NOT_STARTED` status.
public struct ChecklistCheck1: Codable, Hashable, Sendable {
    public let check: CheckEnum
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        check: CheckEnum,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.check = check
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.check = try container.decode(CheckEnum.self, forKey: .check)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.check, forKey: .check)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case check
    }
}