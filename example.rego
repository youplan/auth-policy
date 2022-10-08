package http.authz

import data.users

default allow = false

allow {
    input.method == "OPTIONS"
}

allow {
    input.method == "GET"
    has_key(users, input.headers["x-auth-request-user"])
}

allow {
    input.method == "POST"
    has_key(users, input.headers["x-auth-request-user"])
}

allow {
    input.method == "PUT"
    has_key(users, input.headers["x-auth-request-user"])
}

allow {
    input.method == "PATCH"
    has_key(users, input.headers["x-auth-request-user"])
}

allow {
    input.method == "DELETE"
    has_key(users, input.headers["x-auth-request-user"])
}

has_key(x, k) { _ = x[k] }
