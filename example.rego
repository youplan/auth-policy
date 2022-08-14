package http.authz

default allow = false

allow {
    input.method == "GET"
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
