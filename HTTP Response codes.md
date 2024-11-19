---
tags: reference, cheatsheet ,http
---
# HTTP Codes

- [1xx informational response](#1xx&informational&response) - the request has been received and continuing process
- [2xx successful](#2xx&successful) - the request has been received, understood, and accepted
- [3xx redirection](#3xx&redirection) - further action is needed in order to complete the request
- [4xx client error](#4xx&client&error) - the request contains bad syntax or cannot be fulfilled
- [5xx server error](#5xx&server&error) - the server failed to fulfill the apparently valid request

***
# 1xx informational response
|Code|Message|Description|
|:--:|-------|-----------|
|100 |Continue| The server has received the request headers and the client should proceed to send the request body providing that the request has been accepted.|
|101 |Switching Protocols |The requester has asked to switch protocols and the server has agreed.|
|102 |Processing |A WebDAV request may take a long time to process, since it involves file operations. This code is used to indicate that the server has received the request and is processing, but does not have a response yet.|
|103 |Early Hints |This code is used to return some response headers before the final HTTP message is sent.|

[Back To Top](#http&codes)

# 2xx successful
|Code|Message|Description|
|:--:|-------|-----------|
|200 |OK |This is the standard response for successful HTTP requests. Code 200 means everything is okay.|
|201 |Created |The fulfilled request resulted in the creation of a new resource.|
|202 |Accepted |The request has been accepted for processing, but has not completed processing.|
|203 |Non-Authoritative Information | The information contained in the entity header is from a local or third-party copy, not from the original.|
|204 |No Content |The server successfully processed the request, but is not returning any content.|
|205 |Reset Content |The requester should clear the form used for the transaction.|
|206 |Partial Content |The server is only delivering part of the resource due to a range header that was sent by the client. This range header is used by HTTP clients to enable resuming interrupted downloads or split downloads in multiple simultaneous streams.|
|207 |Multi Status 	|This code indicates that the following message body contains an XML message and can contain multiple separate response codes.|
|208 |Already Reported |The members of a DAV binding were already enumerated in a previous part of the response and thus, are not being included again|
|226 |IM Used |The server has fulfilled a request for the resource. The response is a representation of the result of one or more instance-manipulations that were applied to the instance.|

[Back To Top](#http&codes)

# 3xx redirection
|Code|Message|Description|
|:--:|-------|-----------|
|300 |Multiple Choices |A list of links, from which the requester can select one and go to it. For example, this code could be used to present multiple video formats.|
|301 |Moved Permanently |The requested page has been moved permanently to a new URL.|
|302 |Found |The request has been moved temporarily to a new URL.|
|303 |See Other |The response can be found under another URL.|
|304 |Not Modified |The response code to an If-Modified-Since or If-None-Match header where the URL has not been modified since the specified date.|
|305 |Use Proxy |The requested resource is only available through a proxy, whose address is provided in the response. This code is generally disobeyed for security reasons|
|306 |Unused |This code is currently unused, but was used for "Switch Proxy".|
|307 |Temporary Redirect |The requested page has temporarily moved to new URL.|
|308 |Permanent Redirect |The request should be repeated using another URL, but the HTTP method cannot change.|

[Back To Top](#http&codes)

# 4xx client error
|Code|Message|Description|
|:--:|-------|-----------|
|400 |Bad Request |There is an apparent client error and therefore the server cannot or will not process the request.|
|401 |Unauthorized |The requested page requires a username and password.|
|402 |Payment Required |This code is reserved for future use. Its original intention was to be used as a part of digital cash or micropayment system.|
|403 |Forbidden |The request was understood by the server, but the server will not take action. This may be due to the user not having necessary permissions.|
|404 |Not Found |The requested resource cannot be found. Most people know or have heard about this code. Most have even seen the error once or twice.|
|405 |Method Not Allowed |The method is not supported for the resource. For example performing a GET request on a form that uses POST.|
|406 |Not Acceptable |The server cannot generate a response that is accepted by the client.|
|407 |Proxy Authentication Required |You must first authenticate with the proxy.|
|408 |Request Timeout |The request took longer than the server was willingly to wait.|
|409 |Conflict |This code indicates that the request could not be processed because of conflict in the current state of the resource.|
|410 |Gone |The requested is no longer available.|
|411 |Length Required |The request did not specify the length of its content. The server cannot accept the request without it.|
|412 |Precondition Failed |The pre-condition that was given in the request evaluated to false by the server.|
|413 |Request Entity Too Large |Since the request entity is too large, the server will not accept the request.|
|414 |Request-url Too Long |The requested URL was too long for the server to process.|
|415 |Unsupported Media Type |The server will not accept the request since the mediatype is not supported.|
|416 |Request Range Not Satisfiable |The client has asked for a portion of the file, but the server cannot provide that portion.|
|417 |Expectation Failed |The server cannot meet the requirement given by the Expect request-header field.|
|418 |I'm a teapot |This code was introduced as an April Fools' joke. It is currently unexpected to be implemented by actual servers.|
|421 |Misdirected Request |The request was directed to a server that is not able to produce a response.|
|422 |Unprocessable Entity |The request was well-formed but the server was unable to follow due to semantic errors.|
|423 |Locked |The resource that is being accessed is locked.|
|424 |Failed Dependency |The request failed because the request it depended upon failed.|
|425 |Too Early |The server is unwilling to process a request that might be replayed later.|
|426 |Upgrade Required |The client should switch to a different protocol that is given in the Upgrade header field.|
|428 |Precondition Required |The origin server requires the client request to be conditional.|
|429 |Too Many Requests |The client has sent too many request in a given amount of time.|
|431 |Request Header Fields Too Large |The server refuses to process the client requests because the request's HTTP headers are too long.|
|451 |Unavailable for Legal Reasons |This indicates that the requested resource is not available due to legal reasons.|

[Back To Top](#http&codes)

# 5xx server error
|Code|Message|Description|
|:--:|-------|-----------|
|500 |Internal Server Error |This code indicates that the server experienced an unexpected condition which prevented it from fulfilling the request.|
|501 |Not Implemented |The server did not recognize the request method or is unable to fulfill the request.|
|502 |Bad Gateway |The server, while acting as either a gateway or proxy, has received an invalid response from the upstream server.|
|503 |Service Unavailable |The server cannot handle the request.|
|504 |Gateway Timeout |The server, while acting as either a gateway or proxy, did not receive a timely response from the upstream server.|
|505 |HTTP Version Not Supported |The client HTTP protocol version used in the request is not supported by the server.|
|506 |Variant Also Negotiates |The server encountered an internal configuration error in which the chosen variant is configured to engage in content negotiation.|
|507 |Insufficient Storage |This indicates that the server cannot perform the request as the server cannot store the representation needed to complete the request.|
|508 |Loop Detected |While processing the request, the server detected an infinite loop.|
|510 |Not Extended |The request needed further extensions for the server to fulfill it.|
|511 |Network Authentication Required |The client needs to authenticate to gain network access. This code is not sent by the origin server, however it is generated by intercepting proxies that control access to the network.|

[Back To Top](#http&codes)