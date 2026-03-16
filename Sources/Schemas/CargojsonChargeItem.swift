import Foundation

/// [WEBCARGO/CUSTOMER] Rate description line.
public struct CargojsonChargeItem: Codable, Hashable, Sendable {
    public let numberOfPieces: Int?
    public let rateCombinationPointCityCode: String?
    public let commodityItemNumber: [String]?
    public let goodsDescription: String?
    public let grossWeight: CargojsonWeight?
    public let consolidation: Bool?
    public let harmonisedCommodityCode: [String]?
    public let isoCountryCodeOfOriginOfGoods: String?
    public let packaging: [CargojsonPackaging]?
    public let charges: [CargojsonCharge]?
    public let serviceCode: CargojsonServiceCode?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        numberOfPieces: Int? = nil,
        rateCombinationPointCityCode: String? = nil,
        commodityItemNumber: [String]? = nil,
        goodsDescription: String? = nil,
        grossWeight: CargojsonWeight? = nil,
        consolidation: Bool? = nil,
        harmonisedCommodityCode: [String]? = nil,
        isoCountryCodeOfOriginOfGoods: String? = nil,
        packaging: [CargojsonPackaging]? = nil,
        charges: [CargojsonCharge]? = nil,
        serviceCode: CargojsonServiceCode? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.numberOfPieces = numberOfPieces
        self.rateCombinationPointCityCode = rateCombinationPointCityCode
        self.commodityItemNumber = commodityItemNumber
        self.goodsDescription = goodsDescription
        self.grossWeight = grossWeight
        self.consolidation = consolidation
        self.harmonisedCommodityCode = harmonisedCommodityCode
        self.isoCountryCodeOfOriginOfGoods = isoCountryCodeOfOriginOfGoods
        self.packaging = packaging
        self.charges = charges
        self.serviceCode = serviceCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.numberOfPieces = try container.decodeIfPresent(Int.self, forKey: .numberOfPieces)
        self.rateCombinationPointCityCode = try container.decodeIfPresent(String.self, forKey: .rateCombinationPointCityCode)
        self.commodityItemNumber = try container.decodeIfPresent([String].self, forKey: .commodityItemNumber)
        self.goodsDescription = try container.decodeIfPresent(String.self, forKey: .goodsDescription)
        self.grossWeight = try container.decodeIfPresent(CargojsonWeight.self, forKey: .grossWeight)
        self.consolidation = try container.decodeIfPresent(Bool.self, forKey: .consolidation)
        self.harmonisedCommodityCode = try container.decodeIfPresent([String].self, forKey: .harmonisedCommodityCode)
        self.isoCountryCodeOfOriginOfGoods = try container.decodeIfPresent(String.self, forKey: .isoCountryCodeOfOriginOfGoods)
        self.packaging = try container.decodeIfPresent([CargojsonPackaging].self, forKey: .packaging)
        self.charges = try container.decodeIfPresent([CargojsonCharge].self, forKey: .charges)
        self.serviceCode = try container.decodeIfPresent(CargojsonServiceCode.self, forKey: .serviceCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.numberOfPieces, forKey: .numberOfPieces)
        try container.encodeIfPresent(self.rateCombinationPointCityCode, forKey: .rateCombinationPointCityCode)
        try container.encodeIfPresent(self.commodityItemNumber, forKey: .commodityItemNumber)
        try container.encodeIfPresent(self.goodsDescription, forKey: .goodsDescription)
        try container.encodeIfPresent(self.grossWeight, forKey: .grossWeight)
        try container.encodeIfPresent(self.consolidation, forKey: .consolidation)
        try container.encodeIfPresent(self.harmonisedCommodityCode, forKey: .harmonisedCommodityCode)
        try container.encodeIfPresent(self.isoCountryCodeOfOriginOfGoods, forKey: .isoCountryCodeOfOriginOfGoods)
        try container.encodeIfPresent(self.packaging, forKey: .packaging)
        try container.encodeIfPresent(self.charges, forKey: .charges)
        try container.encodeIfPresent(self.serviceCode, forKey: .serviceCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case numberOfPieces
        case rateCombinationPointCityCode
        case commodityItemNumber
        case goodsDescription
        case grossWeight
        case consolidation
        case harmonisedCommodityCode
        case isoCountryCodeOfOriginOfGoods
        case packaging
        case charges
        case serviceCode
    }
}