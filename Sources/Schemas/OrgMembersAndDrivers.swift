import Foundation

public struct OrgMembersAndDrivers: Codable, Hashable, Sendable {
    public let orgMember: OrgMemberDetails
    public let driver: Driver1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orgMember: OrgMemberDetails,
        driver: Driver1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orgMember = orgMember
        self.driver = driver
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orgMember = try container.decode(OrgMemberDetails.self, forKey: .orgMember)
        self.driver = try container.decodeIfPresent(Driver1.self, forKey: .driver)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.orgMember, forKey: .orgMember)
        try container.encodeIfPresent(self.driver, forKey: .driver)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orgMember = "org_member"
        case driver
    }
}