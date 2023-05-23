SHELL := /bin/bash
.ONESHELL:
.DEFAULT_GOAL=help

#############################################################################
### PYTHON VIRTUAL ENVIRONMENTS
#############################################################################
env_req: # Create/updated requirements.txt using the imports
	@cd src/
	@pipreqs . --force
	@mv ./requirements.txt ../.
env_req_all: # Create/update requirements.txt using all packages
	@pip freeze > requirements.txt
env_install: # Install dependencies from a requirements.txt
	@pip install -r requirements.txt
env_remove: # Remove project's virtual environment
	@rm -fr ~/environments/data-science-life-cycle/

#############################################################################
### USING PYTEST FOR TESTING
#############################################################################
test: # Run tests
	@pytest -vvv

#############################################################################
### CLEAN CODE
#############################################################################
# Prompt for user input script as for example:
# src/features/employee_analysis.py
FILELOC ?= $(shell bash -c 'read -p "Fileloc: " fileloc; echo $$fileloc')
clean_type: # Use mypy for type checking
	@mypy $(FILELOC)
clean_imports: # Use autoflake to check all unused imports
	@autoflake --recursive --remove-all-unused-imports $(FILELOC)
	@echo "Autoflake checked all unused imports"
clean_remove_imports: # Use autoflake to remove all unused imports
	@autoflake --recursive --in-place --remove-all-unused-imports $(FILELOC)
	@echo "Autoflake removed all unused imports"
clean_inter: # Use interrogate to look for missing docstrings
	@interrogate -vv $(FILELOC)
	@echo "Interrogate looked for missing docstrings"
clean_style: # Checking Python docstring conventions using pydocstyle
	@pydocstyle $(FILELOC)
	@echo "Pydocstyle checked for docstring compliance"

#############################################################################
### PRE-COMMIT
#############################################################################
# Prompt for user input fileloc as for example:
# data/interim/cnt_cli_mapping_lana.csv
MESSAGE ?= $(shell bash -c 'read -p "Message: " message; echo $$message')
pre_commit_install: # Install the git hook scripts
	@pre-commit install
pre_commit_no_verify: # Git commit without the pre-commit hook
	@git commit -m "$(FILELOC)" --no-verify

#############################################################################
### CREATE DOCS
#############################################################################
docs_new: # Create a new project
	@mkdocs new data-science-life-cycle
docs_serve: # Start the live-reloading docs server
	@mkdocs serve
docs_build: # Build the documentation site
	@mkdocs build
docs_deploy: # Deploy Your Documentation to GitHub
	@mkdocs gh-deploy

#############################################################################
### LARGE DATASETS VIEW
#############################################################################
# Prompt for user input fileloc as for example:
# data/interim/cnt_cli_mapping_lana.csv
FILELOC ?= $(shell bash -c 'read -p "Fileloc: " fileloc; echo $$fileloc')
data_view: # View first 10 lines of a large dataset
	@clear
	@head -10 $(FILELOC) | code -

#############################################################################
### CONVERT A JUPYTER NOTEBOOK WITH THE EXTENSION .ipynb INTO A MARKDOWN
#############################################################################
# Prompt for user input fileloc as for example:
# data/interim/filename.ipynb
FILELOC ?= $(shell bash -c 'read -p "Fileloc: " fileloc; echo $$fileloc')
jupyter_to_mk: # Convert Jupyter Notebook into Markdown
	@clear
	@jupyter nbconvert --to markdown $(FILELOC)

#############################################################################
### HADOOP
#############################################################################
# For example to monitor and kill a Spark running application
hadoop_top: # Hadopp cluster usage tool
	@yarn top
# Prompt for user input fileloc as for example.
# Enter your application ID for example:
# application_1589279798049_199286
APPLICATIONID ?= $(shell bash -c 'read -p "Application ID: " app; echo $$app')
hadoop_kill: # Kill Hadoop application
	@yarn application -kill $(APPLICATIONID)

#############################################################################
### MONITOR AND END BACKGROUND RUNNING JOBS
#############################################################################
# Prompt for user input PID: Process ID (PID) as for example:
# 74265
PID ?= $(shell bash -c 'read -p "PID: " pid; echo $$pid')
job_monitor: # Monitor porcess
	@ps -aux | head -1; ps -aux | grep $(PID)
job_terminate: # Terminate the job
	@kill $(PID)
job_kill: # Force kill the job
	@kill -9 $(PID)

#############################################################################
### RUN DATA PIPELINES
#############################################################################
# BUG: if the below lines is uncommented, we get an error if in the present
# branch the file does not exist. The same for line 123.
#include ${PWD}/pipelines/t93kqi0_1_expl_employee_report.mk
run_pipe_1: # Run pipeline for branch 1
clean_pipe_1: # Clean up and start fresh pipeline for branch 1
#include ${PWD}/pipelines/t93kqz7_2_expl_employee_plot.mk
run_pipe_2: # Run pipeline for branch 2
clean_pipe_2: # Clean up and start fresh pipeline for branch 2

##############################################################################
### DELETE ANY DEV FILE CREATED FOR QUICK DEVELOPMENT
#############################################################################
# Prompt for user input folder as for example:
# data/
# Notice that entering data/ also delete all files in all sub-folder
# such as data/interim
FOLDER ?= $(shell bash -c 'read -p "Folder: " folder; echo $$folder')
delete_dev_files: # Delete all files with the _DEV_ substring in the filename
	@find $(FOLDER) -type f -name '*_DEV_*' -delete

#############################################################################
### HELP
#############################################################################
help: # Show this help
	@egrep -h '\s#\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?# "}; \
	{printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
