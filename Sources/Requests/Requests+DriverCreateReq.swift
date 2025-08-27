import Foundation

extension Requests {
    public struct DriverCreateReq: Codable, Hashable, Sendable {
        public let orgMember: OrgMemberDetails
        public let vehicleTypes: JSONValue?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orgMember: OrgMemberDetails,
            vehicleTypes: JSONValue? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orgMember = orgMember
            self.vehicleTypes = vehicleTypes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orgMember = try container.decode(OrgMemberDetails.self, forKey: .orgMember)
            self.vehicleTypes = try container.decodeIfPresent(JSONValue.self, forKey: .vehicleTypes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.orgMember, forKey: .orgMember)
            try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orgMember = "org_member"
            case vehicleTypes = "vehicle_types"
        }
    }
}