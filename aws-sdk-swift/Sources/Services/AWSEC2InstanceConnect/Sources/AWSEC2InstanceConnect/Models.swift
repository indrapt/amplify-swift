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
import protocol AWSClientRuntime.AWSServiceError
import protocol ClientRuntime.HTTPError
import protocol ClientRuntime.ModeledError
@_spi(SmithyReadWrite) import protocol SmithyReadWrite.SmithyReader
@_spi(SmithyReadWrite) import protocol SmithyReadWrite.SmithyWriter
@_spi(SmithyReadWrite) import struct AWSClientRuntime.AWSJSONError
@_spi(UnknownAWSHTTPServiceError) import struct AWSClientRuntime.UnknownAWSHTTPServiceError

/// Either your AWS credentials are not valid or you do not have access to the EC2 instance.
public struct AuthException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "Forbidden" }
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

/// The specified instance was not found.
public struct EC2InstanceNotFoundException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "EC2InstanceNotFound" }
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

/// Unable to connect because the instance is not in a valid state. Connecting to a stopped or terminated instance is not supported. If the instance is stopped, start your instance, and try to connect again.
public struct EC2InstanceStateInvalidException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "EC2InstanceStateInvalid" }
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

/// The instance type is not supported for connecting via the serial console. Only Nitro instance types are currently supported.
public struct EC2InstanceTypeInvalidException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "EC2InstanceTypeInvalid" }
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

/// The instance is currently unavailable. Wait a few minutes and try again.
public struct EC2InstanceUnavailableException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "EC2InstanceUnavailable" }
    public static var fault: ClientRuntime.ErrorFault { .server }
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

/// One of the parameters is not valid.
public struct InvalidArgsException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidArguments" }
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

/// Your account is not authorized to use the EC2 Serial Console. To authorize your account, run the EnableSerialConsoleAccess API. For more information, see [EnableSerialConsoleAccess](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EnableSerialConsoleAccess.html) in the Amazon EC2 API Reference.
public struct SerialConsoleAccessDisabledException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "SerialConsoleAccessDisabled" }
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

/// The instance currently has 1 active serial console session. Only 1 session is supported at a time.
public struct SerialConsoleSessionLimitExceededException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "SerialConsoleSessionLimitExceeded" }
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

/// Unable to start a serial console session. Please try again.
public struct SerialConsoleSessionUnavailableException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "SerialConsoleSessionUnavailable" }
    public static var fault: ClientRuntime.ErrorFault { .server }
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

/// Your instance's BIOS version is unsupported for serial console connection. Reboot your instance to update its BIOS, and then try again to connect.
public struct SerialConsoleSessionUnsupportedException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "SerialConsoleSessionUnsupported" }
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

/// The service encountered an error. Follow the instructions in the error message and try again.
public struct ServiceException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InternalServerError" }
    public static var fault: ClientRuntime.ErrorFault { .server }
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

/// The requests were made too frequently and have been throttled. Wait a while and try again. To increase the limit on your request frequency, contact AWS Support.
public struct ThrottlingException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "TooManyRequests" }
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

public struct SendSerialConsoleSSHPublicKeyInput {
    /// The ID of the EC2 instance.
    /// This member is required.
    public var instanceId: Swift.String?
    /// The serial port of the EC2 instance. Currently only port 0 is supported. Default: 0
    public var serialPort: Swift.Int?
    /// The public key material. To use the public key, you must have the matching private key. For information about the supported key formats and lengths, see [Requirements for key pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html#how-to-generate-your-own-key-and-import-it-to-aws) in the Amazon EC2 User Guide.
    /// This member is required.
    public var sshPublicKey: Swift.String?

    public init(
        instanceId: Swift.String? = nil,
        serialPort: Swift.Int? = 0,
        sshPublicKey: Swift.String? = nil
    )
    {
        self.instanceId = instanceId
        self.serialPort = serialPort
        self.sshPublicKey = sshPublicKey
    }
}

public struct SendSerialConsoleSSHPublicKeyOutput {
    /// The ID of the request. Please provide this ID when contacting AWS Support for assistance.
    public var requestId: Swift.String?
    /// Is true if the request succeeds and an error otherwise.
    public var success: Swift.Bool

    public init(
        requestId: Swift.String? = nil,
        success: Swift.Bool = false
    )
    {
        self.requestId = requestId
        self.success = success
    }
}

public struct SendSSHPublicKeyInput {
    /// The Availability Zone in which the EC2 instance was launched.
    public var availabilityZone: Swift.String?
    /// The ID of the EC2 instance.
    /// This member is required.
    public var instanceId: Swift.String?
    /// The OS user on the EC2 instance for whom the key can be used to authenticate.
    /// This member is required.
    public var instanceOSUser: Swift.String?
    /// The public key material. To use the public key, you must have the matching private key.
    /// This member is required.
    public var sshPublicKey: Swift.String?

    public init(
        availabilityZone: Swift.String? = nil,
        instanceId: Swift.String? = nil,
        instanceOSUser: Swift.String? = nil,
        sshPublicKey: Swift.String? = nil
    )
    {
        self.availabilityZone = availabilityZone
        self.instanceId = instanceId
        self.instanceOSUser = instanceOSUser
        self.sshPublicKey = sshPublicKey
    }
}

public struct SendSSHPublicKeyOutput {
    /// The ID of the request. Please provide this ID when contacting AWS Support for assistance.
    public var requestId: Swift.String?
    /// Is true if the request succeeds and an error otherwise.
    public var success: Swift.Bool

    public init(
        requestId: Swift.String? = nil,
        success: Swift.Bool = false
    )
    {
        self.requestId = requestId
        self.success = success
    }
}

extension SendSerialConsoleSSHPublicKeyInput {

    static func urlPathProvider(_ value: SendSerialConsoleSSHPublicKeyInput) -> Swift.String? {
        return "/"
    }
}

extension SendSSHPublicKeyInput {

    static func urlPathProvider(_ value: SendSSHPublicKeyInput) -> Swift.String? {
        return "/"
    }
}

extension SendSerialConsoleSSHPublicKeyInput {

    static func write(value: SendSerialConsoleSSHPublicKeyInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["InstanceId"].write(value.instanceId)
        try writer["SSHPublicKey"].write(value.sshPublicKey)
        try writer["SerialPort"].write(value.serialPort)
    }
}

extension SendSSHPublicKeyInput {

    static func write(value: SendSSHPublicKeyInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["AvailabilityZone"].write(value.availabilityZone)
        try writer["InstanceId"].write(value.instanceId)
        try writer["InstanceOSUser"].write(value.instanceOSUser)
        try writer["SSHPublicKey"].write(value.sshPublicKey)
    }
}

extension SendSerialConsoleSSHPublicKeyOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> SendSerialConsoleSSHPublicKeyOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = SendSerialConsoleSSHPublicKeyOutput()
        value.requestId = try reader["RequestId"].readIfPresent()
        value.success = try reader["Success"].readIfPresent() ?? false
        return value
    }
}

extension SendSSHPublicKeyOutput {

    static func httpOutput(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> SendSSHPublicKeyOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = SendSSHPublicKeyOutput()
        value.requestId = try reader["RequestId"].readIfPresent()
        value.success = try reader["Success"].readIfPresent() ?? false
        return value
    }
}

enum SendSerialConsoleSSHPublicKeyOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.AWSJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "Forbidden": return try AuthException.makeError(baseError: baseError)
            case "EC2InstanceNotFound": return try EC2InstanceNotFoundException.makeError(baseError: baseError)
            case "EC2InstanceStateInvalid": return try EC2InstanceStateInvalidException.makeError(baseError: baseError)
            case "EC2InstanceTypeInvalid": return try EC2InstanceTypeInvalidException.makeError(baseError: baseError)
            case "EC2InstanceUnavailable": return try EC2InstanceUnavailableException.makeError(baseError: baseError)
            case "InvalidArguments": return try InvalidArgsException.makeError(baseError: baseError)
            case "SerialConsoleAccessDisabled": return try SerialConsoleAccessDisabledException.makeError(baseError: baseError)
            case "SerialConsoleSessionLimitExceeded": return try SerialConsoleSessionLimitExceededException.makeError(baseError: baseError)
            case "SerialConsoleSessionUnavailable": return try SerialConsoleSessionUnavailableException.makeError(baseError: baseError)
            case "SerialConsoleSessionUnsupported": return try SerialConsoleSessionUnsupportedException.makeError(baseError: baseError)
            case "InternalServerError": return try ServiceException.makeError(baseError: baseError)
            case "TooManyRequests": return try ThrottlingException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

enum SendSSHPublicKeyOutputError {

    static func httpError(from httpResponse: SmithyHTTPAPI.HTTPResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.AWSJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "Forbidden": return try AuthException.makeError(baseError: baseError)
            case "EC2InstanceNotFound": return try EC2InstanceNotFoundException.makeError(baseError: baseError)
            case "EC2InstanceStateInvalid": return try EC2InstanceStateInvalidException.makeError(baseError: baseError)
            case "EC2InstanceUnavailable": return try EC2InstanceUnavailableException.makeError(baseError: baseError)
            case "InvalidArguments": return try InvalidArgsException.makeError(baseError: baseError)
            case "InternalServerError": return try ServiceException.makeError(baseError: baseError)
            case "TooManyRequests": return try ThrottlingException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension EC2InstanceNotFoundException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> EC2InstanceNotFoundException {
        let reader = baseError.errorBodyReader
        var value = EC2InstanceNotFoundException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

extension ServiceException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> ServiceException {
        let reader = baseError.errorBodyReader
        var value = ServiceException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

extension EC2InstanceStateInvalidException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> EC2InstanceStateInvalidException {
        let reader = baseError.errorBodyReader
        var value = EC2InstanceStateInvalidException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

extension SerialConsoleSessionUnavailableException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> SerialConsoleSessionUnavailableException {
        let reader = baseError.errorBodyReader
        var value = SerialConsoleSessionUnavailableException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

extension AuthException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> AuthException {
        let reader = baseError.errorBodyReader
        var value = AuthException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

extension InvalidArgsException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> InvalidArgsException {
        let reader = baseError.errorBodyReader
        var value = InvalidArgsException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

extension EC2InstanceTypeInvalidException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> EC2InstanceTypeInvalidException {
        let reader = baseError.errorBodyReader
        var value = EC2InstanceTypeInvalidException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

extension SerialConsoleSessionUnsupportedException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> SerialConsoleSessionUnsupportedException {
        let reader = baseError.errorBodyReader
        var value = SerialConsoleSessionUnsupportedException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

extension EC2InstanceUnavailableException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> EC2InstanceUnavailableException {
        let reader = baseError.errorBodyReader
        var value = EC2InstanceUnavailableException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

extension SerialConsoleAccessDisabledException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> SerialConsoleAccessDisabledException {
        let reader = baseError.errorBodyReader
        var value = SerialConsoleAccessDisabledException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

extension ThrottlingException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> ThrottlingException {
        let reader = baseError.errorBodyReader
        var value = ThrottlingException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

extension SerialConsoleSessionLimitExceededException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> SerialConsoleSessionLimitExceededException {
        let reader = baseError.errorBodyReader
        var value = SerialConsoleSessionLimitExceededException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

public enum EC2InstanceConnectClientTypes {}
