import Foundation

public struct WebcargoLoad: Codable, Hashable, Sendable {
    public let netVolumeMeasure: WebcargoValueWithUnit?
    public let netWeight: WebcargoValueWithUnit?
    public let packages: [WebcargoPackage]?
    public let totalChargeableWeight: WebcargoValueWithUnit?
    public let totalQuantity: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        netVolumeMeasure: WebcargoValueWithUnit? = nil,
        netWeight: WebcargoValueWithUnit? = nil,
        packages: [WebcargoPackage]? = nil,
        totalChargeableWeight: WebcargoValueWithUnit? = nil,
        totalQuantity: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.netVolumeMeasure = netVolumeMeasure
        self.netWeight = netWeight
        self.packages = packages
        self.totalChargeableWeight = totalChargeableWeight
        self.totalQuantity = totalQuantity
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.netVolumeMeasure = try container.decodeIfPresent(WebcargoValueWithUnit.self, forKey: .netVolumeMeasure)
        self.netWeight = try container.decodeIfPresent(WebcargoValueWithUnit.self, forKey: .netWeight)
        self.packages = try container.decodeIfPresent([WebcargoPackage].self, forKey: .packages)
        self.totalChargeableWeight = try container.decodeIfPresent(WebcargoValueWithUnit.self, forKey: .totalChargeableWeight)
        self.totalQuantity = try container.decodeIfPresent(String.self, forKey: .totalQuantity)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.netVolumeMeasure, forKey: .netVolumeMeasure)
        try container.encodeIfPresent(self.netWeight, forKey: .netWeight)
        try container.encodeIfPresent(self.packages, forKey: .packages)
        try container.encodeIfPresent(self.totalChargeableWeight, forKey: .totalChargeableWeight)
        try container.encodeIfPresent(self.totalQuantity, forKey: .totalQuantity)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case netVolumeMeasure = "net_volume_measure"
        case netWeight = "net_weight"
        case packages
        case totalChargeableWeight = "total_chargeable_weight"
        case totalQuantity = "total_quantity"
    }
}