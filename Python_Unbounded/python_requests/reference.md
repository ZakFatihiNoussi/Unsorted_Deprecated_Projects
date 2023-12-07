# Client <- Communication and Data Transfer -> Server

## Request Components

- **Method:** GET, POST, DELETE, PUT, ...
- **Data/Uniform Resource Identifier (URI):** Data itself (image, webpage, JSON, etc.)
- **HTTP Version:** HTTP/1.1 or HTTP/2
- **Headers:** Provide additional information about the request or client.
- **Authentication:** Token (can be included in data or headers)
- **Body (optional):** Used when additional data needs to be sent to the server, typically with methods like POST or PUT. The body can contain various types of data, such as form data, JSON, or XML.

## Types of Headers

- **General Headers:** Present in both request and response messages, but not related to the data being sent in the body of the message. Examples: Date, Connection, Cache-Control, Transfer-Encoding
- **Request Headers:** Provide more information about the resource or the desired action to be performed. Common request headers include Accept, Accept-Language, Host, User-Agent, and Referer. For instance, the Accept header specifies the media types accepted by the client, and the User-Agent header provides information about the user agent that initiated the request.
- **Response Headers:** Provide additional information about the server's response or about the resource that is being sent. Examples: Server, Content-Type, Content-Length (size), and Set-Cookie.

## Purpose of Headers

- **Caching and Optimization:** Headers like Cache-Control, Expires, and ETag help in controlling the caching behavior of resources, improving the performance of web apps.
- **Security:** Content-Security-Policy (CSP) and X-Frame-Options help protect against certain types of attacks such as XSS (Cross-Site Scripting) and clickjacking.
- **Authentication and Authorization:** Headers like Authorization are used to pass credentials or tokens for authentication purposes.
- **Content Negotiation:** Headers like Accept and Content-Type allow the client and server to negotiate the content format that is acceptable for both parties.

## Response Components

- **Status Code:** `HTTP/1.1 200 OK` (200 being the status code, and OK being the status message.)
- **Headers:** Additional information about server response. Examples include details about the server, content being sent, and various instructions for the client. Common response headers: `Server`, `Content-Type`, `Content-Length`, `Set-Cookie`, among others.
- **Data:** Basically the data defined by the `Content-Type` header.

## Status Codes

- **1XX - Information**
- **2XX - Success**
- **3XX - Redirect**
- **4XX - Client Error**
- **5XX - Server Error**

## Resources

- [Documentation for `requests`](https://requests.readthedocs.io/en/latest/)
- [Reqres](https://reqres.in/): Tool for request/response, fake API with fake data for testing
- [httpbin](https://httpbin.org/): Same as above
- [Pipedream](https://pipedream.com/requestbin): Inspect HTTP requests
- [Petstore Swagger](https://petstore.swagger.io)
- [GitHub REST API Documentation](https://docs.github.com/en/rest?apiVersion=2022-11-28)
- [Rest Countries v2](https://restcountries.com/v2/all)
- [Rest Countries v3.1](https://restcountries.com/v3.1/all)
- [Twilio Console - Manage Phone Numbers](https://console.twilio.com/us1/develop/phone-numbers/manage/incoming)

## Addendum

- Endpoint: `/api/users?page=2`
- GitHub Settings > Developer Settings > OAuth Apps:
  - Application Name: Python_requests
  - Homepage URL: http://127.0.0.1:5000
  - Authorization Callback URL: http://127.0.0.1:5000/authorize
