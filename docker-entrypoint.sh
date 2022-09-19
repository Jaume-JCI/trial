#!/bin/sh
if [ -z "$TEST" ]; then
    echo "no test, bye"
else
    echo "test=$TEST, hello"
    pytest test_app.py
fi
