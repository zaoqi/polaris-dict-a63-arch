#!/bin/sh
exec diff -urN origin master > patch.patch
