#!/bin/zsh

gh label create ask --description "Define and scope problem and solution" --color c9ecff
gh label create explore --description "Explore and document data to increase understanding" --color f0f29b
gh label create experiment --description "Build features and train models" --color 8569c6
gh label create data --description "Get and transform data" --color 1c587c
gh label create model --description "Prepare model for deployment" --color 0b4e82
gh label create deploy --description "Register, package, and deploy model" --color f79499
gh label create communicate --description "Write reports, create dashboards, summarize findings, etc." --color f9f345
gh label create succeeded --description "This was successful" --color 67d157
gh label create failed --description "This didn't go as hoped" --color c2021c
gh label create onhold --description "Still seems promising, but let's revisit later" --color ffd04f
gh label create blocked --description "Blocked due to lack of access to data, resources, environment, etc." --color ed9a53

