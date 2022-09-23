package http.authz

import data.result

default allow = false

allow = msg {
    input.method == "GET"
    # has_key(result.users, input.headers["x-auth-request-user"])
    msg := sprintf("INPUT, %v", [result.users])
}

allow {
    input.method == "POST"
}

allow {
    input.method == "PUT"
}

allow {
    input.method == "PATCH"
}

allow {
    input.method == "OPTIONS"
}

allow {
    input.method == "DELETE"
}

has_key(x, k) { _ = x[k] }
