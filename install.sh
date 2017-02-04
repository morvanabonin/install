#!/bin/sh
for script in $(ls packages); do
	sh packages/$script
	cd $(pwd)
done