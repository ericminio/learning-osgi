#!/bin/bash

function test_karaf_can_deploy_bundle {
    local actual=$(docker logs karaf | tail -n 3 | grep Hello)
    
    assertequals "$actual" "Hello World."
}