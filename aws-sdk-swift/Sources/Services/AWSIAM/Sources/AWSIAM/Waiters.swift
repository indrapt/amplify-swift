//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import class SmithyWaitersAPI.Waiter
import protocol ClientRuntime.ServiceError
import struct SmithyWaitersAPI.WaiterConfiguration
import struct SmithyWaitersAPI.WaiterOptions
import struct SmithyWaitersAPI.WaiterOutcome

extension IAMClient {

    static func instanceProfileExistsWaiterConfig() throws -> SmithyWaitersAPI.WaiterConfiguration<GetInstanceProfileInput, GetInstanceProfileOutput> {
        let acceptors: [SmithyWaitersAPI.WaiterConfiguration<GetInstanceProfileInput, GetInstanceProfileOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: GetInstanceProfileInput, result: Swift.Result<GetInstanceProfileOutput, Swift.Error>) -> Bool in
                switch result {
                    case .success: return true
                    case .failure: return false
                }
            }),
            .init(state: .retry, matcher: { (input: GetInstanceProfileInput, result: Swift.Result<GetInstanceProfileOutput, Swift.Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ClientRuntime.ServiceError)?.typeName == "NoSuchEntityException"
            }),
        ]
        return try SmithyWaitersAPI.WaiterConfiguration<GetInstanceProfileInput, GetInstanceProfileOutput>(acceptors: acceptors, minDelay: 1.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the InstanceProfileExists event on the getInstanceProfile operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `GetInstanceProfileInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilInstanceProfileExists(options: SmithyWaitersAPI.WaiterOptions, input: GetInstanceProfileInput) async throws -> SmithyWaitersAPI.WaiterOutcome<GetInstanceProfileOutput> {
        let waiter = SmithyWaitersAPI.Waiter(config: try Self.instanceProfileExistsWaiterConfig(), operation: self.getInstanceProfile(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func policyExistsWaiterConfig() throws -> SmithyWaitersAPI.WaiterConfiguration<GetPolicyInput, GetPolicyOutput> {
        let acceptors: [SmithyWaitersAPI.WaiterConfiguration<GetPolicyInput, GetPolicyOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: GetPolicyInput, result: Swift.Result<GetPolicyOutput, Swift.Error>) -> Bool in
                switch result {
                    case .success: return true
                    case .failure: return false
                }
            }),
            .init(state: .retry, matcher: { (input: GetPolicyInput, result: Swift.Result<GetPolicyOutput, Swift.Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ClientRuntime.ServiceError)?.typeName == "NoSuchEntity"
            }),
        ]
        return try SmithyWaitersAPI.WaiterConfiguration<GetPolicyInput, GetPolicyOutput>(acceptors: acceptors, minDelay: 1.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the PolicyExists event on the getPolicy operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `GetPolicyInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilPolicyExists(options: SmithyWaitersAPI.WaiterOptions, input: GetPolicyInput) async throws -> SmithyWaitersAPI.WaiterOutcome<GetPolicyOutput> {
        let waiter = SmithyWaitersAPI.Waiter(config: try Self.policyExistsWaiterConfig(), operation: self.getPolicy(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func roleExistsWaiterConfig() throws -> SmithyWaitersAPI.WaiterConfiguration<GetRoleInput, GetRoleOutput> {
        let acceptors: [SmithyWaitersAPI.WaiterConfiguration<GetRoleInput, GetRoleOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: GetRoleInput, result: Swift.Result<GetRoleOutput, Swift.Error>) -> Bool in
                switch result {
                    case .success: return true
                    case .failure: return false
                }
            }),
            .init(state: .retry, matcher: { (input: GetRoleInput, result: Swift.Result<GetRoleOutput, Swift.Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ClientRuntime.ServiceError)?.typeName == "NoSuchEntity"
            }),
        ]
        return try SmithyWaitersAPI.WaiterConfiguration<GetRoleInput, GetRoleOutput>(acceptors: acceptors, minDelay: 1.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the RoleExists event on the getRole operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `GetRoleInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilRoleExists(options: SmithyWaitersAPI.WaiterOptions, input: GetRoleInput) async throws -> SmithyWaitersAPI.WaiterOutcome<GetRoleOutput> {
        let waiter = SmithyWaitersAPI.Waiter(config: try Self.roleExistsWaiterConfig(), operation: self.getRole(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func userExistsWaiterConfig() throws -> SmithyWaitersAPI.WaiterConfiguration<GetUserInput, GetUserOutput> {
        let acceptors: [SmithyWaitersAPI.WaiterConfiguration<GetUserInput, GetUserOutput>.Acceptor] = [
            .init(state: .success, matcher: { (input: GetUserInput, result: Swift.Result<GetUserOutput, Swift.Error>) -> Bool in
                switch result {
                    case .success: return true
                    case .failure: return false
                }
            }),
            .init(state: .retry, matcher: { (input: GetUserInput, result: Swift.Result<GetUserOutput, Swift.Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? ClientRuntime.ServiceError)?.typeName == "NoSuchEntity"
            }),
        ]
        return try SmithyWaitersAPI.WaiterConfiguration<GetUserInput, GetUserOutput>(acceptors: acceptors, minDelay: 1.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the UserExists event on the getUser operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `GetUserInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilUserExists(options: SmithyWaitersAPI.WaiterOptions, input: GetUserInput) async throws -> SmithyWaitersAPI.WaiterOutcome<GetUserOutput> {
        let waiter = SmithyWaitersAPI.Waiter(config: try Self.userExistsWaiterConfig(), operation: self.getUser(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }
}
