import Foundation

extension Requests {
    public struct SharedTaskGroupMileageCreateForProviderPayProviderClientReq: Codable, Hashable, Sendable {
        public let orderGroupId: String
        public let rateSheetId: String
        /// Must be a string starting with `org_`
        public let executorOrgId: String?
        public let offChrtExecutorOrgId: String?
        public let taskIds: [String]
        public let startLocation: LocationFeature?
        public let startLocationLabel: String?
        public let endLocation: LocationFeature?
        public let endLocationLabel: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderGroupId: String,
            rateSheetId: String,
            executorOrgId: String? = nil,
            offChrtExecutorOrgId: String? = nil,
            taskIds: [String],
            startLocation: LocationFeature? = nil,
            startLocationLabel: String? = nil,
            endLocation: LocationFeature? = nil,
            endLocationLabel: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderGroupId = orderGroupId
            self.rateSheetId = rateSheetId
            self.executorOrgId = executorOrgId
            self.offChrtExecutorOrgId = offChrtExecutorOrgId
            self.taskIds = taskIds
            self.startLocation = startLocation
            self.startLocationLabel = startLocationLabel
            self.endLocation = endLocation
            self.endLocationLabel = endLocationLabel
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderGroupId = try container.decode(String.self, forKey: .orderGroupId)
            self.rateSheetId = try container.decode(String.self, forKey: .rateSheetId)
            self.executorOrgId = try container.decodeIfPresent(String.self, forKey: .executorOrgId)
            self.offChrtExecutorOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtExecutorOrgId)
            self.taskIds = try container.decode([String].self, forKey: .taskIds)
            self.startLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .startLocation)
            self.startLocationLabel = try container.decodeIfPresent(String.self, forKey: .startLocationLabel)
            self.endLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .endLocation)
            self.endLocationLabel = try container.decodeIfPresent(String.self, forKey: .endLocationLabel)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.orderGroupId, forKey: .orderGroupId)
            try container.encode(self.rateSheetId, forKey: .rateSheetId)
            try container.encodeIfPresent(self.executorOrgId, forKey: .executorOrgId)
            try container.encodeIfPresent(self.offChrtExecutorOrgId, forKey: .offChrtExecutorOrgId)
            try container.encode(self.taskIds, forKey: .taskIds)
            try container.encodeIfPresent(self.startLocation, forKey: .startLocation)
            try container.encodeIfPresent(self.startLocationLabel, forKey: .startLocationLabel)
            try container.encodeIfPresent(self.endLocation, forKey: .endLocation)
            try container.encodeIfPresent(self.endLocationLabel, forKey: .endLocationLabel)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderGroupId = "order_group_id"
            case rateSheetId = "rate_sheet_id"
            case executorOrgId = "executor_org_id"
            case offChrtExecutorOrgId = "off_chrt_executor_org_id"
            case taskIds = "task_ids"
            case startLocation = "start_location"
            case startLocationLabel = "start_location_label"
            case endLocation = "end_location"
            case endLocationLabel = "end_location_label"
        }
    }
}