//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(SmithyReadWrite) import ClientRuntime
import class SmithyHTTPAPI.HTTPResponse
@_spi(SmithyReadWrite) import class SmithyJSON.Reader
@_spi(SmithyReadWrite) import class SmithyJSON.Writer
import enum ClientRuntime.ErrorFault
import enum SmithyReadWrite.ReaderError
@_spi(SmithyReadWrite) import enum SmithyReadWrite.ReadingClosures
@_spi(SmithyReadWrite) import enum SmithyReadWrite.WritingClosures
@_spi(SmithyReadWrite) import func SmithyReadWrite.listWritingClosure
import protocol AWSClientRuntime.AWSServiceError
import protocol ClientRuntime.HTTPError
import protocol ClientRuntime.ModeledError
@_spi(SmithyReadWrite) import protocol SmithyReadWrite.SmithyReader
@_spi(SmithyReadWrite) import protocol SmithyReadWrite.SmithyWriter
@_spi(SmithyReadWrite) import struct AWSClientRuntime.RestJSONError
@_spi(UnknownAWSHTTPServiceError) import struct AWSClientRuntime.UnknownAWSHTTPServiceError

extension PersonalizeRuntimeClientTypes {
    /// An object that identifies an action. The API returns a list of PredictedActions.
    public struct PredictedAction {
        /// The ID of the recommended action.
        public var actionId: Swift.String?
        /// The score of the recommended action. For information about action scores, see [How action recommendation scoring works](https://docs.aws.amazon.com/personalize/latest/dg/how-action-recommendation-scoring-works.html).
        public var score: Swift.Double?

        public init(
            actionId: Swift.String? = nil,
            score: Swift.Double? = nil
        )
        {
            self.actionId = actionId
            self.score = score
        }
    }

}

/// Provide a valid value for the field or parameter.
public struct InvalidInputException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidInputException" }
    public static var fault: ClientRuntime.ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = SmithyHTTPAPI.HTTPResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

/// The specified resource does not exist.
public struct ResourceNotFoundException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ResourceNotFoundException" }
    public static var fault: ClientRuntime.ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = SmithyHTTPAPI.HTTPResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

public struct GetActionRecommendationsInput {
    /// The Amazon Resource Name (ARN) of the campaign to use for getting action recommendations. This campaign must deploy a solution version trained with a PERSONALIZED_ACTIONS recipe.
    public var campaignArn: Swift.String?
    /// The ARN of the filter to apply to the returned recommendations. For more information, see [Filtering Recommendations](https://docs.aws.amazon.com/personalize/latest/dg/filter.html). When using this parameter, be sure the filter resource is ACTIVE.
    public var filterArn: Swift.String?
    /// The values to use when filtering recommendations. For each placeholder parameter in your filter expression, provide the parameter name (in matching case) as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma. For filter expressions that use an INCLUDE element to include actions, you must provide values for all parameters that are defined in the expression. For filters with expressions that use an EXCLUDE element to exclude actions, you can omit the filter-values. In this case, Amazon Personalize doesn't use that portion of the expression to filter recommendations. For more information, see [Filtering recommendations and user segments](https://docs.aws.amazon.com/personalize/latest/dg/filter.html).
    public var filterValues: [Swift.String: Swift.String]?
    /// The number of results to return. The default is 5. The maximum is 100.
    public var numResults: Swift.Int?
    /// The user ID of the user to provide action recommendations for.
    public var userId: Swift.String?

    public init(
        campaignArn: Swift.String? = nil,
        filterArn: Swift.String? = nil,
        filterValues: [Swift.String: Swift.String]? = nil,
        numResults: Swift.Int? = 0,
        userId: Swift.String? = nil
    )
    {
        self.campaignArn = campaignArn
        self.filterArn = filterArn
        self.filterValues = filterValues
        self.numResults = numResults
        self.userId = userId
    }
}

extension GetActionRecommendationsInput: Swift.CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        "GetActionRecommendationsInput(campaignArn: \(Swift.String(describing: campaignArn)), filterArn: \(Swift.String(describing: filterArn)), numResults: \(Swift.String(describing: numResults)), userId: \(Swift.String(describing: userId)), filterValues: [keys: \(Swift.String(describing: filterValues?.keys)), values: \"CONTENT_REDACTED\"])"}
}

public struct GetActionRecommendationsOutput {
    /// A list of action recommendations sorted in descending order by prediction score. There can be a maximum of 100 actions in the list. For information about action scores, see [How action recommendation scoring works](https://docs.aws.amazon.com/personalize/latest/dg/how-action-recommendation-scoring-works.html).
    public var actionList: [PersonalizeRuntimeClientTypes.PredictedAction]?
    /// The ID of the recommendation.
    public var recommendationId: Swift.String?

    public init(
        actionList: [PersonalizeRuntimeClientTypes.PredictedAction]? = nil,
        recommendationId: Swift.String? = nil
    )
    {
        self.actionList = actionList
        self.recommendationId = recommendationId
    }
}

public struct GetPersonalizedRankingInput {
    /// The Amazon Resource Name (ARN) of the campaign to use for generating the personalized ranking.
    /// This member is required.
    public var campaignArn: Swift.String?
    /// The contextual metadata to use when getting recommendations. Contextual metadata includes any interaction information that might be relevant when getting a user's recommendations, such as the user's current location or device type.
    public var context: [Swift.String: Swift.String]?
    /// The Amazon Resource Name (ARN) of a filter you created to include items or exclude items from recommendations for a given user. For more information, see [Filtering Recommendations](https://docs.aws.amazon.com/personalize/latest/dg/filter.html).
    public var filterArn: Swift.String?
    /// The values to use when filtering recommendations. For each placeholder parameter in your filter expression, provide the parameter name (in matching case) as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma. For filter expressions that use an INCLUDE element to include items, you must provide values for all parameters that are defined in the expression. For filters with expressions that use an EXCLUDE element to exclude items, you can omit the filter-values.In this case, Amazon Personalize doesn't use that portion of the expression to filter recommendations. For more information, see [Filtering Recommendations](https://docs.aws.amazon.com/personalize/latest/dg/filter.html).
    public var filterValues: [Swift.String: Swift.String]?
    /// A list of items (by itemId) to rank. If an item was not included in the training dataset, the item is appended to the end of the reranked list. If you are including metadata in recommendations, the maximum is 50. Otherwise, the maximum is 500.
    /// This member is required.
    public var inputList: [Swift.String]?
    /// If you enabled metadata in recommendations when you created or updated the campaign, specify metadata columns from your Items dataset to include in the personalized ranking. The map key is ITEMS and the value is a list of column names from your Items dataset. The maximum number of columns you can provide is 10. For information about enabling metadata for a campaign, see [Enabling metadata in recommendations for a campaign](https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-return-metadata).
    public var metadataColumns: [Swift.String: [Swift.String]]?
    /// The user for which you want the campaign to provide a personalized ranking.
    /// This member is required.
    public var userId: Swift.String?

    public init(
        campaignArn: Swift.String? = nil,
        context: [Swift.String: Swift.String]? = nil,
        filterArn: Swift.String? = nil,
        filterValues: [Swift.String: Swift.String]? = nil,
        inputList: [Swift.String]? = nil,
        metadataColumns: [Swift.String: [Swift.String]]? = nil,
        userId: Swift.String? = nil
    )
    {
        self.campaignArn = campaignArn
        self.context = context
        self.filterArn = filterArn
        self.filterValues = filterValues
        self.inputList = inputList
        self.metadataColumns = metadataColumns
        self.userId = userId
    }
}

extension GetPersonalizedRankingInput: Swift.CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        "GetPersonalizedRankingInput(campaignArn: \(Swift.String(describing: campaignArn)), filterArn: \(Swift.String(describing: filterArn)), inputList: \(Swift.String(describing: inputList)), metadataColumns: \(Swift.String(describing: metadataColumns)), userId: \(Swift.String(describing: userId)), context: [keys: \(Swift.String(describing: context?.keys)), values: \"CONTENT_REDACTED\"], filterValues: [keys: \(Swift.String(describing: filterValues?.keys)), values: \"CONTENT_REDACTED\"])"}
}

extension PersonalizeRuntimeClientTypes {
    /// An object that identifies an item. The and APIs return a list of PredictedItems.
    public struct PredictedItem {
        /// The recommended item ID.
        public var itemId: Swift.String?
        /// Metadata about the item from your Items dataset.
        public var metadata: [Swift.String: Swift.String]?
        /// The name of the promotion that included the predicted item.
        public var promotionName: Swift.String?
        /// If you use User-Personalization-v2, a list of reasons for why the item was included in recommendations. Possible reasons include the following:
        ///
        /// * Promoted item - Indicates the item was included as part of a promotion that you applied in your recommendation request.
        ///
        /// * Exploration - Indicates the item was included with exploration. With exploration, recommendations include items with less interactions data or relevance for the user. For more information about exploration, see [Exploration](https://docs.aws.amazon.com/personalize/latest/dg/use-case-recipe-features.html#about-exploration).
        ///
        /// * Popular item - Indicates the item was included as a placeholder popular item. If you use a filter, depending on how many recommendations the filter removes, Amazon Personalize might add placeholder items to meet the numResults for your recommendation request. These items are popular items, based on interactions data, that satisfy your filter criteria. They don't have a relevance score for the user.
        public var reason: [Swift.String]?
        /// A numeric representation of the model's certainty that the item will be the next user selection. For more information on scoring logic, see [how-scores-work].
        public var score: Swift.Double?

        public init(
            itemId: Swift.String? = nil,
            metadata: [Swift.String: Swift.String]? = nil,
            promotionName: Swift.String? = nil,
            reason: [Swift.String]? = nil,
            score: Swift.Double? = nil
        )
        {
            self.itemId = itemId
            self.metadata = metadata
            self.promotionName = promotionName
            self.reason = reason
            self.score = score
        }
    }

}

extension PersonalizeRuntimeClientTypes.PredictedItem: Swift.CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        "PredictedItem(itemId: \(Swift.String(describing: itemId)), promotionName: \(Swift.String(describing: promotionName)), reason: \(Swift.String(describing: reason)), score: \(Swift.String(describing: score)), metadata: \"CONTENT_REDACTED\")"}
}

public struct GetPersonalizedRankingOutput {
    /// A list of items in order of most likely interest to the user. The maximum is 500.
    public var personalizedRanking: [PersonalizeRuntimeClientTypes.PredictedItem]?
    /// The ID of the recommendation.
    public var recommendationId: Swift.String?

    public init(
        personalizedRanking: [PersonalizeRuntimeClientTypes.PredictedItem]? = nil,
        recommendationId: Swift.String? = nil
    )
    {
        self.personalizedRanking = personalizedRanking
        self.recommendationId = recommendationId
    }
}

extension PersonalizeRuntimeClientTypes {
    /// Contains information on a promotion. A promotion defines additional business rules that apply to a configurable subset of recommended items.
    public struct Promotion {
        /// The Amazon Resource Name (ARN) of the filter used by the promotion. This filter defines the criteria for promoted items. For more information, see [Promotion filters](https://docs.aws.amazon.com/personalize/latest/dg/promoting-items.html#promotion-filters).
        public var filterArn: Swift.String?
        /// The values to use when promoting items. For each placeholder parameter in your promotion's filter expression, provide the parameter name (in matching case) as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma. For filter expressions that use an INCLUDE element to include items, you must provide values for all parameters that are defined in the expression. For filters with expressions that use an EXCLUDE element to exclude items, you can omit the filter-values. In this case, Amazon Personalize doesn't use that portion of the expression to filter recommendations. For more information on creating filters, see [Filtering recommendations and user segments](https://docs.aws.amazon.com/personalize/latest/dg/filter.html).
        public var filterValues: [Swift.String: Swift.String]?
        /// The name of the promotion.
        public var name: Swift.String?
        /// The percentage of recommended items to apply the promotion to.
        public var percentPromotedItems: Swift.Int?

        public init(
            filterArn: Swift.String? = nil,
            filterValues: [Swift.String: Swift.String]? = nil,
            name: Swift.String? = nil,
            percentPromotedItems: Swift.Int? = nil
        )
        {
            self.filterArn = filterArn
            self.filterValues = filterValues
            self.name = name
            self.percentPromotedItems = percentPromotedItems
        }
    }

}

extension PersonalizeRuntimeClientTypes.Promotion: Swift.CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        "Promotion(filterArn: \(Swift.String(describing: filterArn)), name: \(Swift.String(describing: name)), percentPromotedItems: \(Swift.String(describing: percentPromotedItems)), filterValues: [keys: \(Swift.String(describing: filterValues?.keys)), values: \"CONTENT_REDACTED\"])"}
}

public struct GetRecommendationsInput {
    /// The Amazon Resource Name (ARN) of the campaign to use for getting recommendations.
    public var campaignArn: Swift.String?
    /// The contextual metadata to use when getting recommendations. Contextual metadata includes any interaction information that might be relevant when getting a user's recommendations, such as the user's current location or device type.
    public var context: [Swift.String: Swift.String]?
    /// The ARN of the filter to apply to the returned recommendations. For more information, see [Filtering Recommendations](https://docs.aws.amazon.com/personalize/latest/dg/filter.html). When using this parameter, be sure the filter resource is ACTIVE.
    public var filterArn: Swift.String?
    /// The values to use when filtering recommendations. For each placeholder parameter in your filter expression, provide the parameter name (in matching case) as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma. For filter expressions that use an INCLUDE element to include items, you must provide values for all parameters that are defined in the expression. For filters with expressions that use an EXCLUDE element to exclude items, you can omit the filter-values.In this case, Amazon Personalize doesn't use that portion of the expression to filter recommendations. For more information, see [Filtering recommendations and user segments](https://docs.aws.amazon.com/personalize/latest/dg/filter.html).
    public var filterValues: [Swift.String: Swift.String]?
    /// The item ID to provide recommendations for. Required for RELATED_ITEMS recipe type.
    public var itemId: Swift.String?
    /// If you enabled metadata in recommendations when you created or updated the campaign or recommender, specify the metadata columns from your Items dataset to include in item recommendations. The map key is ITEMS and the value is a list of column names from your Items dataset. The maximum number of columns you can provide is 10. For information about enabling metadata for a campaign, see [Enabling metadata in recommendations for a campaign](https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-return-metadata). For information about enabling metadata for a recommender, see [Enabling metadata in recommendations for a recommender](https://docs.aws.amazon.com/personalize/latest/dg/creating-recommenders.html#create-recommender-return-metadata).
    public var metadataColumns: [Swift.String: [Swift.String]]?
    /// The number of results to return. The default is 25. If you are including metadata in recommendations, the maximum is 50. Otherwise, the maximum is 500.
    public var numResults: Swift.Int?
    /// The promotions to apply to the recommendation request. A promotion defines additional business rules that apply to a configurable subset of recommended items.
    public var promotions: [PersonalizeRuntimeClientTypes.Promotion]?
    /// The Amazon Resource Name (ARN) of the recommender to use to get recommendations. Provide a recommender ARN if you created a Domain dataset group with a recommender for a domain use case.
    public var recommenderArn: Swift.String?
    /// The user ID to provide recommendations for. Required for USER_PERSONALIZATION recipe type.
    public var userId: Swift.String?

    public init(
        campaignArn: Swift.String? = nil,
        context: [Swift.String: Swift.String]? = nil,
        filterArn: Swift.String? = nil,
        filterValues: [Swift.String: Swift.String]? = nil,
        itemId: Swift.String? = nil,
        metadataColumns: [Swift.String: [Swift.String]]? = nil,
        numResults: Swift.Int? = 0,
        promotions: [PersonalizeRuntimeClientTypes.Promotion]? = nil,
        recommenderArn: Swift.String? = nil,
        userId: Swift.String? = nil
    )
    {
        self.campaignArn = campaignArn
        self.context = context
        self.filterArn = filterArn
        self.filterValues = filterValues
        self.itemId = itemId
        self.metadataColumns = metadataColumns
        self.numResults = numResults
        self.promotions = promotions
        self.recommenderArn = recommenderArn
        self.userId = userId
    }
}

extension GetRecommendationsInput: Swift.CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        "GetRecommendationsInput(campaignArn: \(Swift.String(describing: campaignArn)), filterArn: \(Swift.String(describing: filterArn)), itemId: \(Swift.String(describing: itemId)), metadataColumns: \(Swift.String(describing: metadataColumns)), numResults: \(Swift.String(describing: numResults)), promotions: \(Swift.String(describing: promotions)), recommenderArn: \(Swift.String(describing: recommenderArn)), userId: \(Swift.String(describing: userId)), context: [keys: \(Swift.String(describing: context?.keys)), values: \"CONTENT_REDACTED\"], filterValues: [keys: \(Swift.String(describing: filterValues?.keys)), values: \"CONTENT_REDACTED\"])"}
}

public struct GetRecommendationsOutput {
    /// A list of recommendations sorted in descending order by prediction score. There can be a maximum of 500 items in the list.
    public var itemList: [PersonalizeRuntimeClientTypes.PredictedItem]?
    /// The ID of the recommendation.
    public var recommendationId: Swift.String?

    public init(
        itemList: [PersonalizeRuntimeClientTypes.PredictedItem]? = nil,
        recommendationId: Swift.String? = nil
    )
    {
        self.itemList = itemList
        self.recommendationId = recommendationId
    }
}

extension GetActionRecommendationsInput {

    static func urlPathProvider(_ value: GetActionRecommendationsInput) -> Swift.String? {
        return "/action-recommendations"
    }
}

extension GetPersonalizedRankingInput {

    static func urlPathProvider(_ value: GetPersonalizedRankingInput) -> Swift.String? {
        return "/personalize-ranking"
    }
}

extension GetRecommendationsInput {

    static func urlPathProvider(_ value: GetRecommendationsInput) -> Swift.String? {
        return "/recommendations"
    }
}

extension GetActionRecommendationsInput {

    static func write(value: GetActionRecommendationsInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["campaignArn"].write(value.campaignArn)
        try writer["filterArn"].write(value.filterArn)
        try writer["filterValues"].writeMap(value.filterValues, valueWritingClosure: SmithyReadWrite.WritingClosures.writeString(value:to:), keyNodeInfo: "key", valueNodeInfo: "value", isFlattened: false)
        try writer["numResults"].write(value.numResults)
        try writer["userId"].write(value.userId)
    }
}

extension GetPersonalizedRankingInput {

    static func write(value: GetPersonalizedRankingInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["campaignArn"].write(value.campaignArn)
        try writer["context"].writeMap(value.context, valueWritingClosure: SmithyReadWrite.WritingClosures.writeString(value:to:), keyNodeInfo: "key", valueNodeInfo: "value", isFlattened: false)
        try writer["filterArn"].write(value.filterArn)
        try writer["filterValues"].writeMap(value.filterValues, valueWritingClosure: SmithyReadWrite.WritingClosures.writeString(value:to:), keyNodeInfo: "key", valueNodeInfo: "value", isFlattened: false)
        try writer["inputList"].writeList(value.inputList, memberWritingClosure: SmithyReadWrite.WritingClosures.writeString(value:to:), memberNodeInfo: "member", isFlattened: false)
        try writer["metadataColumns"].writeMap(value.metadataColumns, valueWritingClosure: SmithyReadWrite.listWritingClosure(memberWritingClosure: SmithyReadWrite.WritingClosures.writeString(value:to:), memberNodeInfo: "member", isFlattened: false), keyNodeInfo: "key", valueNodeInfo: "value", isFlattened: false)
        try writer["userId"].write(value.userId)
    }
}

extension GetRecommendationsInput {

    static func write(value: GetRecommendationsInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["campaignArn"].write(value.campaignArn)
        try writer["context"].writeMap(value.context, valueWritingClosure: SmithyReadWrite.WritingClosures.writeString(value:to:), keyNodeInfo: "key", valueNodeInfo: "value", isFlattened: false)
        try writer["filterArn"].write(value.filterArn)
        try writer["filterValues"].writeMap(value.filterValues, valueWritingClosure: SmithyReadWrite.WritingClosures.writeString(value:to:), keyNodeInfo: "key", valueNodeInfo: "value", isFlattened: false)
        try writer["itemId"].write(value.itemId)
        try writer["metadataColumns"].writeMap(value.metadataColumns, valueWritingClosure: SmithyReadWrite.listWritingClosure(memberWritingClosure: SmithyReadWrite.WritingClosures.writeString(value:to:), memberNodeInfo: "member", isFlattened: false), keyNodeInfo: "key", valueNodeInfo: "value", isFlattened: false)
        try writer["numResults"].write(value.numResults)
        try writer["promotions"].writeList(value.promotions, memberWritingClosure: PersonalizeRuntimeClientTypes.Promotion.write(value:to:), memberNodeInfo: "member", isFlattened: false)
        try writer["recommenderArn"].write(value.recommenderArn)
        try writer["userId"].write(value.userId)
    }
}

extension GetActionRecommendationsOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> GetActionRecommendationsOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = GetActionRecommendationsOutput()
        value.actionList = try reader["actionList"].readListIfPresent(memberReadingClosure: PersonalizeRuntimeClientTypes.PredictedAction.read(from:), memberNodeInfo: "member", isFlattened: false)
        value.recommendationId = try reader["recommendationId"].readIfPresent()
        return value
    }
}

extension GetPersonalizedRankingOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> GetPersonalizedRankingOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = GetPersonalizedRankingOutput()
        value.personalizedRanking = try reader["personalizedRanking"].readListIfPresent(memberReadingClosure: PersonalizeRuntimeClientTypes.PredictedItem.read(from:), memberNodeInfo: "member", isFlattened: false)
        value.recommendationId = try reader["recommendationId"].readIfPresent()
        return value
    }
}

extension GetRecommendationsOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> GetRecommendationsOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = GetRecommendationsOutput()
        value.itemList = try reader["itemList"].readListIfPresent(memberReadingClosure: PersonalizeRuntimeClientTypes.PredictedItem.read(from:), memberNodeInfo: "member", isFlattened: false)
        value.recommendationId = try reader["recommendationId"].readIfPresent()
        return value
    }
}

enum GetActionRecommendationsOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "InvalidInputException": return try InvalidInputException.makeError(baseError: baseError)
            case "ResourceNotFoundException": return try ResourceNotFoundException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

enum GetPersonalizedRankingOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "InvalidInputException": return try InvalidInputException.makeError(baseError: baseError)
            case "ResourceNotFoundException": return try ResourceNotFoundException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

enum GetRecommendationsOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "InvalidInputException": return try InvalidInputException.makeError(baseError: baseError)
            case "ResourceNotFoundException": return try ResourceNotFoundException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension ResourceNotFoundException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ResourceNotFoundException {
        let reader = baseError.errorBodyReader
        var value = ResourceNotFoundException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

extension InvalidInputException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> InvalidInputException {
        let reader = baseError.errorBodyReader
        var value = InvalidInputException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

extension PersonalizeRuntimeClientTypes.PredictedAction {

    static func read(from reader: SmithyJSON.Reader) throws -> PersonalizeRuntimeClientTypes.PredictedAction {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = PersonalizeRuntimeClientTypes.PredictedAction()
        value.actionId = try reader["actionId"].readIfPresent()
        value.score = try reader["score"].readIfPresent()
        return value
    }
}

extension PersonalizeRuntimeClientTypes.PredictedItem {

    static func read(from reader: SmithyJSON.Reader) throws -> PersonalizeRuntimeClientTypes.PredictedItem {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = PersonalizeRuntimeClientTypes.PredictedItem()
        value.itemId = try reader["itemId"].readIfPresent()
        value.score = try reader["score"].readIfPresent()
        value.promotionName = try reader["promotionName"].readIfPresent()
        value.metadata = try reader["metadata"].readMapIfPresent(valueReadingClosure: SmithyReadWrite.ReadingClosures.readString(from:), keyNodeInfo: "key", valueNodeInfo: "value", isFlattened: false)
        value.reason = try reader["reason"].readListIfPresent(memberReadingClosure: SmithyReadWrite.ReadingClosures.readString(from:), memberNodeInfo: "member", isFlattened: false)
        return value
    }
}

extension PersonalizeRuntimeClientTypes.Promotion {

    static func write(value: PersonalizeRuntimeClientTypes.Promotion?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["filterArn"].write(value.filterArn)
        try writer["filterValues"].writeMap(value.filterValues, valueWritingClosure: SmithyReadWrite.WritingClosures.writeString(value:to:), keyNodeInfo: "key", valueNodeInfo: "value", isFlattened: false)
        try writer["name"].write(value.name)
        try writer["percentPromotedItems"].write(value.percentPromotedItems)
    }
}

public enum PersonalizeRuntimeClientTypes {}
