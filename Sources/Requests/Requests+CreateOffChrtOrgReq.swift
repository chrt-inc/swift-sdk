import Foundation

extension Requests {
    public struct CreateOffChrtOrgReq: Codable, Hashable, Sendable {
        public let coordinatorDefaultDepartmentId: String?
        public let offChrtOrgData: OffChrtOrgDataClientCreate1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            coordinatorDefaultDepartmentId: String? = nil,
            offChrtOrgData: OffChrtOrgDataClientCreate1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.coordinatorDefaultDepartmentId = coordinatorDefaultDepartmentId
            self.offChrtOrgData = offChrtOrgData
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.coordinatorDefaultDepartmentId = try container.decodeIfPresent(String.self, forKey: .coordinatorDefaultDepartmentId)
            self.offChrtOrgData = try container.decode(OffChrtOrgDataClientCreate1.self, forKey: .offChrtOrgData)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.coordinatorDefaultDepartmentId, forKey: .coordinatorDefaultDepartmentId)
            try container.encode(self.offChrtOrgData, forKey: .offChrtOrgData)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case coordinatorDefaultDepartmentId = "coordinator_default_department_id"
            case offChrtOrgData = "off_chrt_org_data"
        }
    }
}