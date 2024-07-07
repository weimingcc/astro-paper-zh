#!bin/sh
# sh new_post.sh file_name

pubDatetime=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
base_name=$(basename ${1})
echo "---
title: The title of the post
author: your name
pubDatetime: ${pubDatetime}
slug: ${base_name%.*}
featured: true
draft: false
tags:
  - tags
#ogImage: ""
description: This is the example description of the example post.
canonicalURL: https://example.org/my-article-was-already-posted-here
---" > ${1}


