//
//  HTTPClientTests.swift
//  DessertsTests
//
//  Created by Eric Burrell on 5/15/23.
//

import XCTest
@testable import Desserts

final class HTTPClientTests: XCTestCase {
    var httpClient: HttpClient!
    var expectation: XCTestExpectation!
    var apiURLString = "https://jsonplaceholder.typicode.com/posts/42"
    var strMeal: String = "Dessert Name"
    var strMealThumb: String = "https://www.example.com"
    var idMeal: String = "12345"
    var httpStatusCode: Int = 200

    override func setUpWithError() throws {
        // Prepare mock response for success case
        strMeal = "Dessert Name"
        strMealThumb = "https://www.example.com"
        idMeal = "12345"
        httpStatusCode = 200
        
        let configuration = URLSessionConfiguration.default
        configuration.protocolClasses = [MockURLProtocol.self]
        let urlSession = URLSession.init(configuration: configuration)
        
        httpClient = HttpClient(urlSession: urlSession)
        expectation = expectation(description: "Expectation")
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func prepareMockRequest() {
        let jsonString = """
                            {
                                "meals": [
                                    {
                                        "strMeal": "\(strMeal)",
                                        "strMealThumb": "\(strMealThumb)",
                                        "idMeal": "\(idMeal)"
                                    }
                                ]
                            }
                         """
         let data = jsonString.data(using: .utf8)
    
        // Set up mock request handler
        MockURLProtocol.requestHandler = { request in
            guard let url = request.url, url == URL(string: self.apiURLString) else {
                throw HttpError.badURL("Test URL is invalid")
            }
            
            let response = HTTPURLResponse(url: url, statusCode: self.httpStatusCode, httpVersion: nil, headerFields: nil)!
            return (response, data)
        }
        
    }
    func testSuccessfulResponse() async {
        
        prepareMockRequest()
        
        do {
            let result: [Meal] = try await httpClient.fetch(urlString: apiURLString)
            XCTAssertEqual(result[0].strMeal, strMeal)
            XCTAssertEqual(result[0].strMealThumb, strMealThumb)
            XCTAssertEqual(result[0].idMeal, idMeal)
            self.expectation.fulfill()
        } catch {
            XCTFail("Unexpectedly returned error: \(error)")
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1.0)
        
    }
    
    func testBadURLThrowsError() async {
        apiURLString = "http://abc.com/%"
        prepareMockRequest()
        
        do {
            let _: [Meal]  = try await httpClient.fetch(urlString: apiURLString)
            XCTFail("Should have thrown badURL error")
            self.expectation.fulfill()
        } catch {
            XCTAssertEqual(error.localizedDescription, HttpError.badURL().localizedDescription)
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1.0)
    }
    
    func testBadResponseThrowsError() async {
        httpStatusCode = 400
        prepareMockRequest()
        
        do {
            let _: [Meal]  = try await httpClient.fetch(urlString: apiURLString)
            XCTFail("Should have thrown badResponse error")
            self.expectation.fulfill()
        } catch {
            XCTAssertEqual(error.localizedDescription, HttpError.badResponse().localizedDescription)
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1.0)
    }
    
    func testCannotDecodeJSONThrowsError() async {
        strMeal = "\""
        prepareMockRequest()
        
        do {
            let _: [Meal]  = try await httpClient.fetch(urlString: apiURLString)
            XCTFail("Should have thrown errorDecodingData error")
            self.expectation.fulfill()
        } catch {
            XCTAssertEqual(error.localizedDescription, HttpError.errorDecodingData().localizedDescription)
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1.0)
    }
}
