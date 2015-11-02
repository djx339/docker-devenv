#!/bin/bash

_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ssh-keygen -t rsa -C "anisible_test" -N "" -f "$_dir/id_rsa"

cp "$_dir/id_rsa.pub" "$_dir/node/id_rsa.pub"
mv "$_dir/id_rsa"     "$_dir/ctrlm/"
mv "$_dir/id_rsa.pub" "$_dir/ctrlm/"
