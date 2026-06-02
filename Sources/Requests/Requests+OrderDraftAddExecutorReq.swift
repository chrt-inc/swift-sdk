import Foundation

extension Requests {
    public struct OrderDraftAddExecutorReq: Codable, Hashable, Sendable {
        /// On-platform provider org to assign as executor.
        public let executorOrgId: String?
        /// Off-platform provider org to assign as executor.
        public let offChrtExecutorOrgId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            executorOrgId: String? = nil,
            offChrtExecutorOrgId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.executorOrgId = executorOrgId
            self.offChrtExecutorOrgId = offChrtExecutorOrgId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.executorOrgId = try container.decodeIfPresent(String.self, forKey: .executorOrgId)
            self.offChrtExecutorOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtExecutorOrgId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.executorOrgId, forKey: .executorOrgId)
            try container.encodeIfPresent(self.offChrtExecutorOrgId, forKey: .offChrtExecutorOrgId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case executorOrgId = "executor_org_id"
            case offChrtExecutorOrgId = "off_chrt_executor_org_id"
        }
    }
}