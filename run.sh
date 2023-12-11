#!/bin/bash

folder_path="Questionnaire"

# Check if any C, C++, or Python files exist in the folder
c_files=$(find "$folder_path" -name "*.c")
cpp_files=$(find "$folder_path" -name "*.cpp")
python_files=$(find "$folder_path" -name "*.py")

if [ -n "$c_files" ]; then
    for c_file in $c_files; do
        echo "Running: $c_file"
        gcc "$c_file" -o "${c_file%.c}.o" && ./"${c_file%.c}.o"
    done
fi

if [ -n "$cpp_files" ]; then
    for cpp_file in $cpp_files; do
        echo "Running: $cpp_file"
        g++ "$cpp_file" -o "${cpp_file%.cpp}.o" && ./"${cpp_file%.cpp}.o"
    done
fi

if [ -n "$python_files" ]; then
    for python_file in $python_files; do
        echo "Running: $python_file"
        python3 "$python_file"
    done
fi
