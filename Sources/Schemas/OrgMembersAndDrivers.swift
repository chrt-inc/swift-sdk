import Foundation

public struct OrgMembersAndDrivers: Codable, Hashable, Sendable {
    public let driver: Driver1?
    public let orgMember: OrgMemberDetails
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        driver: Driver1? = nil,
        orgMember: OrgMemberDetails,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.driver = driver
        self.orgMember = orgMember
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.driver = try container.decodeIfPresent(Driver1.self, forKey: .driver)
        self.orgMember = try container.decode(OrgMemberDetails.self, forKey: .orgMember)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.driver, forKey: .driver)
        try container.encode(self.orgMember, forKey: .orgMember)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case driver
        case orgMember = "org_member"
    }
}