package http.authz

default allow = false 

allow {
    input.path == "sayhello"
    input.method == "GET"
}
