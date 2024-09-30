//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(SmithyReadWrite) import ClientRuntime
import Foundation
import class SmithyHTTPAPI.HTTPResponse
@_spi(SmithyReadWrite) import class SmithyJSON.Reader
@_spi(SmithyReadWrite) import class SmithyJSON.Writer
import enum SmithyReadWrite.ReaderError
@_spi(SmithyReadWrite) import enum SmithyReadWrite.ReadingClosures
@_spi(SmithyTimestamps) import enum SmithyTimestamps.TimestampFormat
@_spi(SmithyReadWrite) import protocol SmithyReadWrite.SmithyReader
@_spi(SmithyReadWrite) import protocol SmithyReadWrite.SmithyWriter
@_spi(SmithyReadWrite) import struct AWSClientRuntime.RestJSONError
@_spi(UnknownAWSHTTPServiceError) import struct AWSClientRuntime.UnknownAWSHTTPServiceError

extension SageMakerMetricsClientTypes {

    public enum MetricStatistic: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        case avg
        case count
        case last
        case max
        case min
        case stdDev
        case sdkUnknown(Swift.String)

        public static var allCases: [MetricStatistic] {
            return [
                .avg,
                .count,
                .last,
                .max,
                .min,
                .stdDev
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .avg: return "Avg"
            case .count: return "Count"
            case .last: return "Last"
            case .max: return "Max"
            case .min: return "Min"
            case .stdDev: return "StdDev"
            case let .sdkUnknown(s): return s
            }
        }
    }
}

extension SageMakerMetricsClientTypes {

    public enum Period: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        case fiveMinute
        case iterationNumber
        case oneHour
        case oneMinute
        case sdkUnknown(Swift.String)

        public static var allCases: [Period] {
            return [
                .fiveMinute,
                .iterationNumber,
                .oneHour,
                .oneMinute
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .fiveMinute: return "FiveMinute"
            case .iterationNumber: return "IterationNumber"
            case .oneHour: return "OneHour"
            case .oneMinute: return "OneMinute"
            case let .sdkUnknown(s): return s
            }
        }
    }
}

extension SageMakerMetricsClientTypes {

    public enum XAxisType: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        case iterationNumber
        case timestamp
        case sdkUnknown(Swift.String)

        public static var allCases: [XAxisType] {
            return [
                .iterationNumber,
                .timestamp
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .iterationNumber: return "IterationNumber"
            case .timestamp: return "Timestamp"
            case let .sdkUnknown(s): return s
            }
        }
    }
}

extension SageMakerMetricsClientTypes {
    /// Specifies a query to retrieve training metrics from SageMaker.
    public struct MetricQuery {
        /// The end time of metrics to retrieve.
        public var end: Swift.Int?
        /// The name of the metric to retrieve.
        /// This member is required.
        public var metricName: Swift.String?
        /// The metrics stat type of metrics to retrieve.
        /// This member is required.
        public var metricStat: SageMakerMetricsClientTypes.MetricStatistic?
        /// The time period of metrics to retrieve.
        /// This member is required.
        public var period: SageMakerMetricsClientTypes.Period?
        /// The ARN of the SageMaker resource to retrieve metrics for.
        /// This member is required.
        public var resourceArn: Swift.String?
        /// The start time of metrics to retrieve.
        public var start: Swift.Int?
        /// The x-axis type of metrics to retrieve.
        /// This member is required.
        public var xAxisType: SageMakerMetricsClientTypes.XAxisType?

        public init(
            end: Swift.Int? = nil,
            metricName: Swift.String? = nil,
            metricStat: SageMakerMetricsClientTypes.MetricStatistic? = nil,
            period: SageMakerMetricsClientTypes.Period? = nil,
            resourceArn: Swift.String? = nil,
            start: Swift.Int? = nil,
            xAxisType: SageMakerMetricsClientTypes.XAxisType? = nil
        )
        {
            self.end = end
            self.metricName = metricName
            self.metricStat = metricStat
            self.period = period
            self.resourceArn = resourceArn
            self.start = start
            self.xAxisType = xAxisType
        }
    }

}

public struct BatchGetMetricsInput {
    /// Queries made to retrieve training metrics from SageMaker.
    /// This member is required.
    public var metricQueries: [SageMakerMetricsClientTypes.MetricQuery]?

    public init(
        metricQueries: [SageMakerMetricsClientTypes.MetricQuery]? = nil
    )
    {
        self.metricQueries = metricQueries
    }
}

extension SageMakerMetricsClientTypes {

    public enum MetricQueryResultStatus: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        case complete
        case internalError
        case truncated
        case validationError
        case sdkUnknown(Swift.String)

        public static var allCases: [MetricQueryResultStatus] {
            return [
                .complete,
                .internalError,
                .truncated,
                .validationError
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .complete: return "Complete"
            case .internalError: return "InternalError"
            case .truncated: return "Truncated"
            case .validationError: return "ValidationError"
            case let .sdkUnknown(s): return s
            }
        }
    }
}

extension SageMakerMetricsClientTypes {
    /// The result of a query to retrieve training metrics from SageMaker.
    public struct MetricQueryResult {
        /// A message describing the status of the metric query.
        public var message: Swift.String?
        /// The metric values retrieved by the query.
        /// This member is required.
        public var metricValues: [Swift.Double]?
        /// The status of the metric query.
        /// This member is required.
        public var status: SageMakerMetricsClientTypes.MetricQueryResultStatus?
        /// The values for the x-axis of the metrics.
        /// This member is required.
        public var xAxisValues: [Swift.Int]?

        public init(
            message: Swift.String? = nil,
            metricValues: [Swift.Double]? = nil,
            status: SageMakerMetricsClientTypes.MetricQueryResultStatus? = nil,
            xAxisValues: [Swift.Int]? = nil
        )
        {
            self.message = message
            self.metricValues = metricValues
            self.status = status
            self.xAxisValues = xAxisValues
        }
    }

}

public struct BatchGetMetricsOutput {
    /// The results of a query to retrieve training metrics from SageMaker.
    public var metricQueryResults: [SageMakerMetricsClientTypes.MetricQueryResult]?

    public init(
        metricQueryResults: [SageMakerMetricsClientTypes.MetricQueryResult]? = nil
    )
    {
        self.metricQueryResults = metricQueryResults
    }
}

extension SageMakerMetricsClientTypes {
    /// The raw metric data to associate with the resource.
    public struct RawMetricData {
        /// The name of the metric.
        /// This member is required.
        public var metricName: Swift.String?
        /// The metric step (epoch).
        public var step: Swift.Int?
        /// The time that the metric was recorded.
        /// This member is required.
        public var timestamp: Foundation.Date?
        /// The metric value.
        /// This member is required.
        public var value: Swift.Double?

        public init(
            metricName: Swift.String? = nil,
            step: Swift.Int? = nil,
            timestamp: Foundation.Date? = nil,
            value: Swift.Double? = nil
        )
        {
            self.metricName = metricName
            self.step = step
            self.timestamp = timestamp
            self.value = value
        }
    }

}

public struct BatchPutMetricsInput {
    /// A list of raw metric values to put.
    /// This member is required.
    public var metricData: [SageMakerMetricsClientTypes.RawMetricData]?
    /// The name of the Trial Component to associate with the metrics. The Trial Component name must be entirely lowercase.
    /// This member is required.
    public var trialComponentName: Swift.String?

    public init(
        metricData: [SageMakerMetricsClientTypes.RawMetricData]? = nil,
        trialComponentName: Swift.String? = nil
    )
    {
        self.metricData = metricData
        self.trialComponentName = trialComponentName
    }
}

extension SageMakerMetricsClientTypes {

    public enum PutMetricsErrorCode: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        case conflictError
        case internalError
        case metricLimitExceeded
        case validationError
        case sdkUnknown(Swift.String)

        public static var allCases: [PutMetricsErrorCode] {
            return [
                .conflictError,
                .internalError,
                .metricLimitExceeded,
                .validationError
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .conflictError: return "CONFLICT_ERROR"
            case .internalError: return "INTERNAL_ERROR"
            case .metricLimitExceeded: return "METRIC_LIMIT_EXCEEDED"
            case .validationError: return "VALIDATION_ERROR"
            case let .sdkUnknown(s): return s
            }
        }
    }
}

extension SageMakerMetricsClientTypes {
    /// An error that occured when putting the metric data.
    public struct BatchPutMetricsError {
        /// The error code of an error that occured when attempting to put metrics.
        ///
        /// * METRIC_LIMIT_EXCEEDED: The maximum amount of metrics per resource is exceeded.
        ///
        /// * INTERNAL_ERROR: An internal error occured.
        ///
        /// * VALIDATION_ERROR: The metric data failed validation.
        ///
        /// * CONFLICT_ERROR: Multiple requests attempted to modify the same data simultaneously.
        public var code: SageMakerMetricsClientTypes.PutMetricsErrorCode?
        /// An index that corresponds to the metric in the request.
        public var metricIndex: Swift.Int?

        public init(
            code: SageMakerMetricsClientTypes.PutMetricsErrorCode? = nil,
            metricIndex: Swift.Int? = nil
        )
        {
            self.code = code
            self.metricIndex = metricIndex
        }
    }

}

public struct BatchPutMetricsOutput {
    /// Lists any errors that occur when inserting metric data.
    public var errors: [SageMakerMetricsClientTypes.BatchPutMetricsError]?

    public init(
        errors: [SageMakerMetricsClientTypes.BatchPutMetricsError]? = nil
    )
    {
        self.errors = errors
    }
}

extension BatchGetMetricsInput {

    static func urlPathProvider(_ value: BatchGetMetricsInput) -> Swift.String? {
        return "/BatchGetMetrics"
    }
}

extension BatchPutMetricsInput {

    static func urlPathProvider(_ value: BatchPutMetricsInput) -> Swift.String? {
        return "/BatchPutMetrics"
    }
}

extension BatchGetMetricsInput {

    static func write(value: BatchGetMetricsInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["MetricQueries"].writeList(value.metricQueries, memberWritingClosure: SageMakerMetricsClientTypes.MetricQuery.write(value:to:), memberNodeInfo: "member", isFlattened: false)
    }
}

extension BatchPutMetricsInput {

    static func write(value: BatchPutMetricsInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["MetricData"].writeList(value.metricData, memberWritingClosure: SageMakerMetricsClientTypes.RawMetricData.write(value:to:), memberNodeInfo: "member", isFlattened: false)
        try writer["TrialComponentName"].write(value.trialComponentName)
    }
}

extension BatchGetMetricsOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> BatchGetMetricsOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = BatchGetMetricsOutput()
        value.metricQueryResults = try reader["MetricQueryResults"].readListIfPresent(memberReadingClosure: SageMakerMetricsClientTypes.MetricQueryResult.read(from:), memberNodeInfo: "member", isFlattened: false)
        return value
    }
}

extension BatchPutMetricsOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> BatchPutMetricsOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = BatchPutMetricsOutput()
        value.errors = try reader["Errors"].readListIfPresent(memberReadingClosure: SageMakerMetricsClientTypes.BatchPutMetricsError.read(from:), memberNodeInfo: "member", isFlattened: false)
        return value
    }
}

enum BatchGetMetricsOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

enum BatchPutMetricsOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension SageMakerMetricsClientTypes.MetricQueryResult {

    static func read(from reader: SmithyJSON.Reader) throws -> SageMakerMetricsClientTypes.MetricQueryResult {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = SageMakerMetricsClientTypes.MetricQueryResult()
        value.status = try reader["Status"].readIfPresent() ?? .sdkUnknown("")
        value.message = try reader["Message"].readIfPresent()
        value.xAxisValues = try reader["XAxisValues"].readListIfPresent(memberReadingClosure: SmithyReadWrite.ReadingClosures.readInt(from:), memberNodeInfo: "member", isFlattened: false) ?? []
        value.metricValues = try reader["MetricValues"].readListIfPresent(memberReadingClosure: SmithyReadWrite.ReadingClosures.readDouble(from:), memberNodeInfo: "member", isFlattened: false) ?? []
        return value
    }
}

extension SageMakerMetricsClientTypes.BatchPutMetricsError {

    static func read(from reader: SmithyJSON.Reader) throws -> SageMakerMetricsClientTypes.BatchPutMetricsError {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = SageMakerMetricsClientTypes.BatchPutMetricsError()
        value.code = try reader["Code"].readIfPresent()
        value.metricIndex = try reader["MetricIndex"].readIfPresent()
        return value
    }
}

extension SageMakerMetricsClientTypes.MetricQuery {

    static func write(value: SageMakerMetricsClientTypes.MetricQuery?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["End"].write(value.end)
        try writer["MetricName"].write(value.metricName)
        try writer["MetricStat"].write(value.metricStat)
        try writer["Period"].write(value.period)
        try writer["ResourceArn"].write(value.resourceArn)
        try writer["Start"].write(value.start)
        try writer["XAxisType"].write(value.xAxisType)
    }
}

extension SageMakerMetricsClientTypes.RawMetricData {

    static func write(value: SageMakerMetricsClientTypes.RawMetricData?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["MetricName"].write(value.metricName)
        try writer["Step"].write(value.step)
        try writer["Timestamp"].writeTimestamp(value.timestamp, format: SmithyTimestamps.TimestampFormat.epochSeconds)
        try writer["Value"].write(value.value)
    }
}

public enum SageMakerMetricsClientTypes {}
