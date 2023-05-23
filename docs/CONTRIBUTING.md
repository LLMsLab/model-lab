# How to Contribute

- [How to Contribute](#how-to-contribute)
  - [Introduction: GitHub Life-Cycle with Google CoLab Notebooks](#introduction-github-life-cycle-with-google-colab-notebooks)
  - [1. Opening an Issue on GitHub](#1-opening-an-issue-on-github)
  - [2. Create a Branch](#2-create-a-branch)
    - [Branching Strategy](#branching-strategy)
    - [Steps to Create a New Branch](#steps-to-create-a-new-branch)
    - [Branch Naming Conventions](#branch-naming-conventions)
      - [Guidelines](#guidelines)
      - [Categories](#categories)
  - [3. Write Your Code with Google CoLab](#3-write-your-code-with-google-colab)
    - [Checking Environment and Setting Up Google Colab](#checking-environment-and-setting-up-google-colab)
      - [How to Deal with Sensitive Information](#how-to-deal-with-sensitive-information)
      - [Upload your `.env` file to Google Drive](#upload-your-env-file-to-google-drive)
      - [Installing the python-dotenv library](#installing-the-python-dotenv-library)
      - [Importing necessary modules](#importing-necessary-modules)
      - [Loading environment variables](#loading-environment-variables)
      - [Retrieving API keys from the environment](#retrieving-api-keys-from-the-environment)
    - [Unmount Google Drive](#unmount-google-drive)
  - [4. Push Your Code](#4-push-your-code)
    - [Pushing Changes from Google Colab to GitHub](#pushing-changes-from-google-colab-to-github)
    - [Writing Good Git Commit Messages](#writing-good-git-commit-messages)
  - [5. Pull Request Review Process](#5-pull-request-review-process)
    - [Deciding When to Merge or Keep a Branch Separately](#deciding-when-to-merge-or-keep-a-branch-separately)
  - [6. Review and Merge Using GitHub](#6-review-and-merge-using-github)
  - [7. Close the Issue](#7-close-the-issue)
  - [Appendix](#appendix)
    - [Using Labels on Issues and Pull Requests](#using-labels-on-issues-and-pull-requests)
      - [Default and Custom Labels](#default-and-custom-labels)
      - [Creating Labels Manually Using GitHub's Web Interface](#creating-labels-manually-using-githubs-web-interface)
      - [Using GitHub CLI to Create Labels](#using-github-cli-to-create-labels)
    - [Security Best Practices While using Google CoLab](#security-best-practices-while-using-google-colab)
    - [Why it is not Possible to Use Google Colab with VS Code](#why-it-is-not-possible-to-use-google-colab-with-vs-code)
    - [Working with Data and Colab](#working-with-data-and-colab)
      - [Uploading files from your local file system](#uploading-files-from-your-local-file-system)
      - [Downloading files to your local file system](#downloading-files-to-your-local-file-system)


Thank you for investing your time in contributing to our project!

Welcome to our contribution guide. As we strive to maintain a high
standard of quality and consistency in our work, we have adopted a set
of prescriptive steps and best practices encapsulated within the [Data
Science Lifecycle Process (DSL-P)](https://github.com/dslp/dslp). 

The DSL-P provides a robust framework that enables data science teams to
consistently deliver value. It outlines a branching strategy that fits
the data science development flow, offers issue templates for various
types of data science work, and provides comprehensive guidance on how
to integrate all the necessary tools and workflows to make data science
work efficient and effective.

In this guide, we will closely follow the DSL-P documentation. We
believe this will enhance our collaboration, improve our productivity,
and ultimately lead to the delivery of high-quality data-driven
solutions. Whether you're a seasoned contributor or a newcomer to our
project, we encourage you to familiarize yourself with the DSL-P and
this guide to understand our workflow and expectations. 

We look forward to your valuable contributions!

## Introduction: GitHub Life-Cycle with Google CoLab Notebooks

The GitHub life-cycle is an effective way of managing and organizing
your code and collaboration with your team when working on projects,
particularly when Google CoLab notebooks are involved. This life-cycle
involves several steps that help streamline the development process and
ensure code quality and consistency. Here is a brief explanation of each
step:

1. **Open an Issue**: The life-cycle begins by opening an issue. An
   issue is a description of a task, feature, or bug that needs to be
   addressed in the project. It's a way of tracking individual work
   items and provides a place for discussing the work and any problems
   encountered.

2. **Create a Branch**: Once an issue has been opened, the next step is
   to create a branch where you'll do your work. Branches allow you to
   work on different tasks in isolation, without affecting the main (or
   other) branch of the project. This is particularly useful when
   working on complex projects where many people may be contributing to
   the codebase.

3. **Write Your Code with Google CoLab**: Now, you're ready to start
   coding! If you're using Google CoLab notebooks, you can link your
   notebook to your GitHub repository and save your work directly there.
   This is particularly useful for data science projects where you want
   to keep track of exploratory data analysis, model training details,
   and other steps of your work.

4. **Push Your Code**: After writing your code and testing it
   thoroughly, the next step is to commit your changes and push your
   code to GitHub. This updates your branch on GitHub with your latest
   changes.

5. **Create a Pull Request (PR)**: Once you've pushed your changes, the
   next step is to create a pull request. A pull request is a way of
   proposing your changes to the rest of the team. It allows others to
   review your code and give feedback before the changes are merged into
   the main branch. When creating a pull request, it's important to
   provide a clear and concise description of the changes you've made
   and the reason behind them.

6. **Review and Merge**: After a pull request has been created, it will
   be reviewed by another member of the team. They will look at your
   code, provide feedback, and eventually approve the changes. Once your
   pull request has been approved, it can be merged into the main
   branch. Merging finalizes the changes, adding them to the main
   codebase.

7. **Close the Issue**: Finally, once the changes have been merged and
   the task described in the issue has been completed, the issue can be
   closed. This signifies that the work has been completed.

This life-cycle provides a structured way to manage your code and
collaborate effectively with your team. By following these steps, you
can ensure that your code is reviewed and tested before it becomes part
of the main project, and that everyone on the team has a chance to
provide input and understand the changes being made.

## 1. Opening an Issue on GitHub

Opening an issue on GitHub is the first step in the GitHub life-cycle.
This allows you to clearly define the task, bug, or feature that needs
to be addressed in your project. Here's how to do it:

Navigate to the main page of the repository on GitHub.  Click on the
"Issues" tab.  Click on the "New issue" button.  You'll now be presented
with a list of issue templates, if they have been set up for your
project.

| Template Name              | Description                                                                                                    |
|----------------------------|----------------------------------------------------------------------------------------------------------------|
| Ask Issue Template         | Used for asking questions or seeking help about a particular aspect of the project.                            |
| Bug Report Template        | Used for reporting a bug or an issue in the codebase.                                                          |
| Data Acquisition Template  | Used when the work involves sourcing or acquiring new data for the project.                                    |
| Data Creation Template     | Used when new data needs to be created, such as synthetic data or modified versions of existing data.          |
| Experiment Issues Template | Used for planning and tracking experiments, such as new modeling approaches or feature engineering techniques. |
| Feature Request            | Used to propose new features or enhancements to the project.                                                   |
| Model Issues Template      | Used for issues related to building, tuning, or evaluating models.                                             |

Issue templates provide a standard structure for reporting different
types of issues, like bugs, feature requests, data acquisition tasks,
data creation tasks, experimental issues, or model issues. They are
extremely useful for maintaining consistency and clarity in the project.
Each template prompts the issue creator to provide necessary details
about the task at hand, helping to avoid miscommunication or missing
information.

To choose a template, click on the "Get started" button next to the
template that best matches the type of issue you want to report.

When opening an issue:

1.  **Choose the appropriate template:** This depends on the work to be
    done. For instance, if you're reporting a bug, use the Bug Report
    Template.
    
2.  **Assign a team member:** The person responsible for the issue
    should be assigned to it. This is typically a data scientist.
    
3.  **Add labels:** Labels help categorize and filter issues. They can
    indicate the nature of the issue (bug, enhancement), the project
    phase (data acquisition, preprocessing, modeling), or the urgency
    (high priority).
    
4.  **Include in the project:** If your repository uses the Projects
    feature of GitHub for project management, you should associate the
    issue with the relevant project.
    
5.  **Create a meaningful title:** The title should summarize the issue
    in a clear and concise way.
    
6.  **Reference links to other issues:** You can link related issues to
    provide more context and link the work being done. This is done in
    the description of the issue using the format `#issue_number`. For
    example, `This task is part of a larger effort to improve our data
    quality, as outlined in issue #12.`

## 2. Create a Branch

Working with branches is an integral part of any GitHub project.
Branches allow you to isolate your work from the main code base,
providing a safe space to experiment, develop new features, or fix bugs
without impacting the main project until your changes are ready. This
isolation reduces the risk of introducing errors and ensures the main
codebase remains stable. It also enables concurrent development, with
multiple contributors working on different features or fixes
simultaneously, each on their own branch.

### Branching Strategy

Our project follows the branching strategy outlined in the [Data Science
Lifecycle Process (DSL-P)](https://github.com/dslp/dslp). This approach
provides a structured and efficient way to manage changes, ensure code
quality, and streamline the integration of updates back into the main
project.

The DSL-P branching strategy involves creating a new branch for each
issue or feature. The branch name should clearly indicate its purpose,
following the naming conventions mentioned in the previous section. Once
you've completed your work on this branch, it is then merged back into
the main branch through a Pull Request.

Please remember to regularly pull the latest changes from the main
branch into your working branch to reduce the likelihood of merge
conflicts. Always ensure your branch is up-to-date before submitting a
Pull Request.

In the following sections, we will guide you through the process of
creating and naming a new branch, developing your changes, and creating
a Pull Request.

### Steps to Create a New Branch

Creating a new branch in GitHub is a straightforward process, and we
recommend following the steps provided in the official GitHub
documentation. The guide titled ["Creating and deleting branches within
your
repository"](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-and-deleting-branches-within-your-repository)
provides a detailed walkthrough of the process.

Remember, changes made on this branch won't affect the `main` branch
until you're ready to merge your changes via a Pull Request.

### Branch Naming Conventions

Adopting a consistent branch naming convention is crucial for
maintaining a tidy and coherent Git repository. It helps in quickly
identifying what work is being done in different branches. Here's a
guide to naming your branches effectively in our project.

#### Guidelines

1. All branch names should be in lowercase.
2. Words in a branch name should be separated by a hyphen `-`.
3. The branch name should start with a category, followed by a `/`.
4. The branch name should be descriptive about the work being done on
   the branch.

For example, if you're working on a new feature related to user
authentication, your branch name would be `feature/user-authentication`.

#### Categories

Here's a table of some common categories used in branch naming:

| Category      | Definition                                                                                                                                                                   |
|---------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `feature/`    | This prefix is used for branches where new features are being developed.                                                                                                     |
| `bugfix/`     | This prefix is used for branches where bug fixes are being worked on.                                                                                                        |
| `hotfix/`     | This prefix is typically used for branches where urgent fixes are being made directly to a production environment.                                                           |
| `release/`    | This prefix is used for branches that prepare for a new production release. This usually involves final minor changes and versioning.                                        |
| `docs/`       | This prefix is used for branches that involve only changes to documentation, not to the application code itself.                                                             |
| `experiment/` | This prefix is used for branches where new, experimental ideas are being tested that may or may not ever make it into the main project.                                      |
| `refactor/`   | This prefix is used for branches where code is being refactored or cleaned up, without altering its external behavior.                                                       |
| `test/`       | This prefix is used for branches where new tests are being added or existing tests are being updated.                                                                        |
| `chore/`      | This prefix is used for branches where routine tasks or chores are being completed, such as dependency updates or minor tweaks that don't significantly affect the codebase. |

Examples of branch names following these conventions could be:

- `feature/payment-integration`
- `bugfix/login-error`
- `docs/contribution-guide`
- `refactor/clean-up-code`

Using a `/` as part of a branch name in Git helps to organize branches
into logical groups. This is not a built-in feature of Git, but rather a
naming convention that has been widely adopted by the developer
community.

The `/` character can be used to create a pseudo-directory structure
within your branch names, which makes them easier to manage and
understand.

For example, you might prefix feature branch names with `feature/`, bug
fix branches with `bugfix/`, and documentation branches with `docs/`.
This makes it clear what the purpose of each branch is at a glance. It
also groups branches of the same type together when you list them, which
can make them easier to navigate.

Let's say you have the following branches in your repository:

- `feature/user-authentication`
- `feature/payment-integration`
- `bugfix/login-error`
- `docs/contribution-guide`

By following this naming convention, you can tell at a glance what type
of work is being done on each branch. And if you have a lot of branches,
it helps keep them organized and manageable.

Following a consistent branch naming convention will not only make the
repository easier to navigate, but it will also make collaboration among
team members smoother and more efficient.

## 3. Write Your Code with Google CoLab

The following are Google CoLab instructions to use on your notebook.

### Checking Environment and Setting Up Google Colab

The following code ensures that Google CoLab is running the correct
version of TensofrFLow

```python
try:
  from google.colab import drive
  drive.mount('/content/drive', force_remount=True)
  COLAB = True
  print("Note: using Google Colab")
  %tensorflow_version 2.x
except:
  print("Note: not using Google Colab")
  COLAB = False
```

Here's a step-by-step explanation:

1.  The script first attempts to import the `drive` module from the
    `google.colab` package. This package and its modules are only
    available within the Google Colab environment.
    
2.  If the import is successful, it means the code is running on Google
    Colab. The script then mounts your Google Drive at the directory
    `/content/drive`. If a drive is already mounted at this location,
    the `force_remount=True` argument will unmount it and then remount
    it. This is useful if you've made changes to files in your Google
    Drive after initially mounting the drive.
    
3.  The variable `COLAB` is then set to `True` to indicate that Google
    Colab is being used.
    
4.  The line `print("Note: using Google Colab")` prints a message to the
    console to inform the user that the code is being run on Google
    Colab.
    
5.  The line `%tensorflow_version 2.x` is a magic command in IPython,
    which Google Colab is based on. This command ensures that the 2.x
    version of TensorFlow is installed. If a different version is
    currently installed, it will be uninstalled and the correct version
    will be installed.
    
6.  If any of the above steps fail (due to an `ImportError` because
    `google.colab` doesn't exist or some other exception), then the code
    inside the `except` block will run. This sets `COLAB` to `False` and
    prints a message to the console to inform the user that the code is
    not being run on Google Colab.

#### How to Deal with Sensitive Information

How to deal with sensititve information such as passwords, API keys, or
personal information directly in your notebooks.

Create an `.env` file to keep your sensitive data:

```env
HUGGINGFACEHUB_API_TOKEN=abcabcabcabcabcabcabcabc
OPENAI_API_KEY=abcabcabcabcabcabcabcabc
PINECONE_API_KEY=abcabcabcabcabcabcabcabc
GITHUB_API_KEY=abcabcabcabcabcabcabcabc
GIT_USER_NAME=your_username
GIT_USER_EMAIL=youremail@yahoo.com
```

> The `.env` file **should not** be uploaded to your GitHub repository
> (public or private), especially if it contains sensitive information.
> It's good practice to add `.env` to your `.gitignore` file to ensure
> it's not accidentally committed to the repository.

To use this approach in Google Colab, you would upload the `.env` file
to Google Drive, and then read it from your Colab notebook. Here's how
you can do it:

#### Upload your `.env` file to Google Drive

A possible would be saving your `.env` file in your `Projects` folder on
Google Drive.

#### Installing the python-dotenv library

```pyhton
!pip install python-dotenv
```
This line uses the `pip` command to install the `python-dotenv` library.
The `!` at the beginning allows the command to be run directly from the
notebook.

#### Importing necessary modules

```python
import os
from dotenv import load_dotenv
```

`os` is a standard Python library for interfacing with the operating
system. In this script, it's used to get environment variables.

`load_dotenv` is a function from the `dotenv` module which loads
environment variables from a `.env` file into the system's environment
variables.

#### Loading environment variables

Load the environment variables from the `.env` file:

```python
load_dotenv('/content/drive/MyDrive/path_to_your_.env_file')
```

This line uses the `load_dotenv` function to load the environment
variables from a `.env` file located at the path
`/content/drive/MyDrive/Projects/.env`.

#### Retrieving API keys from the environment

```python
huggingface_api_key = os.getenv("HUGGINGFACEHUB_API_TOKEN")
openai_api_key = os.getenv("OPENAI_API_KEY")
pinecone_api_key = os.getenv("PINECONE_API_KEY")
```

These lines use the `os.getenv` function to retrieve the values of
several environment variables. These are API keys and other sensitive
information that will be used later in the script.

Replace `path_to_your_.env_file` with the path to your `.env` file in
Google Drive.

Remember to adjust the sharing settings of the `.env` file in Google
Drive to minimize the risk of unauthorized access. And always ensure
your code does not unintentionally expose sensitive data.

To adjust the sharing settings of the `.env` file in Google Drive, you
can follow these steps:

1. Go to Google Drive (drive.google.com) and navigate to your `.env`
   file.
2. Right-click on the `.env` file and select "Share."
3. A window will open showing the current sharing settings. By default,
   files are private to you. 

   To make sure the file is private, in the "Share with people and
   groups" section, there should be only your account listed. If there
   are other accounts or groups listed, you can click on them and then
   click on the "Remove" button (trash bin icon) to remove their access.

4. Click "Done" to save your changes.

Regarding preventing the unintentional exposure of sensitive data in
your code, you can follow these guidelines:

1. Never hardcode sensitive data (like API keys, passwords, etc.)
   directly in your notebooks or scripts.
2. Be careful with print statements or other logging that might
   inadvertently display sensitive data.
3. When using an environment variable to store sensitive data, access it
   using `os.getenv('VAR_NAME')` instead of `os.environ['VAR_NAME']`.
   The latter will raise an error if the variable is not found,
   potentially interrupting your code, while the former will return
   `None`, which can be handled more gracefully.
4. When sharing notebooks, always clear outputs first. Some outputs
   might contain sensitive data, especially error messages.
5. Use a .gitignore file to prevent certain files (like your .env file)
   from being committed to a Git repository. Always double-check what
   files are being committed when you run `git add` and `git commit`.
6. Regularly review your code and the packages you use for any potential
   security vulnerabilities. If you're working on a project with other
   people, consider conducting code reviews to catch potential issues.

Following these guidelines can help reduce the risk of exposing
sensitive data.

If you want to avoid using the `.env` file and `python-dotenv` package,
you can consider using the following methods:

1. **Use Google Drive along with Python's standard file I/O
   operations:** Instead of storing your sensitive information in an
   `.env` file and using `python-dotenv` to load it, you can store it in
   a plain text file or a JSON file, and then read this file in your
   code. Here's an example with a JSON file:

```python
import json

# Assuming you have a JSON file on your Google Drive with structure:
# {
#     "HUGGINGFACEHUB_API_TOKEN": "your_api_token"
# }

with open('/content/drive/MyDrive/path_to_your_file.json', 'r') as f:
    secrets = json.load(f)

huggingface_api_key = secrets["HUGGINGFACEHUB_API_TOKEN"]
```

Replace `path_to_your_file.json` with the path to your JSON file in
Google Drive.

2. **Use Google Cloud Secret Manager:** If you're working on a
   professional project, you might consider using a cloud-based secret
   manager. Google Cloud Secret Manager is a good option if you're
   already using Google Cloud. This is more complex to set up, but
   provides a secure way to handle sensitive data.

Remember, no matter which method you use, you must always be cautious to
not expose your sensitive data. Always clear outputs that might contain
sensitive data, and be careful with who you share your notebooks.

### Unmount Google Drive

```python
drive.flush_and_unmount()
print('All changes made in this colab session should now be visible in Drive.')
```

This part of the code is used to unmount Google Drive from the Google
Colab environment and ensure that all changes made during the session
are saved and visible in Google Drive.

Here is a more detailed explanation:

- `drive.flush_and_unmount()`: This method unmounts the Google Drive
  from the current Colab runtime. The `flush_and_unmount` method ensures
  that all changes made to files in the mounted Google Drive during the
  Colab session are "flushed" (i.e., written and saved) to Google Drive
  before unmounting it. This method is used to prevent data loss due to
  unsaved changes when the runtime is disconnected. 

- `print('All changes made in this colab session should now be visible
  in Drive.')`: This line simply prints a message to the console to
  inform the user that all changes made during the Colab session should
  now be saved and visible in Google Drive.


## 4. Push Your Code

After writing and thoroughly testing your code, the next step is to
commit your changes and push your code to GitHub. This updates your
branch on GitHub with your latest changes. If you're working in Google
Colab, you can directly commit your changes to GitHub. 

### Pushing Changes from Google Colab to GitHub

1. Click on `File` in the upper menu of your Google Colab notebook.

2. Select `Save a copy in GitHub` from the dropdown list.

3. Choose the repository where you want to commit your changes.

4. Select the branch where you want to commit your changes. Remember to
   use the branch you created for the issue you are working on.

5. Write a clear and concise commit message in the space provided. This
   message should explain what changes you made and why.

6. Click on `OK` to finalize the commit and push your changes to the
   selected branch in your GitHub repository.

### Writing Good Git Commit Messages

When you commit your changes, you'll need to include a commit message.
This message is a brief summary of the changes you've made. Here are
some best practices to follow while writing your commit message:

1. **Keep it concise:** Ideally, your commit message should not exceed
   50 characters. It's not the place for detailed explanations; if more
   context is necessary, consider adding comments within your code.

2. **Use the imperative mood:** Write your commit message as if you are
   giving a command. For example, use "Add function to compute averages"
   instead of "Added function" or "Adds function."

3. **First line should be a summary:** The first line of the commit
   message should be a brief summary of the changes. If more detail is
   necessary, you can leave one blank line after the summary and then
   provide a more detailed description.

4. **Reference related issues:** If the commit is related to an issue in
   your GitHub project, reference this issue in the commit message. This
   helps to link your commits and the issues they resolve (e.g., "Add
   function to compute averages, closes #42").

5. **Be clear and descriptive:** While brevity is important, clarity
   should not be compromised. Ensure that you and others can understand
   the changes from the commit message.

Following these best practices will make your commit history clear and
easy to navigate for all contributors.

It's a good idea to prefix your commit messages with the type of change
you're making, especially when working in larger teams. This helps
provide more context at a glance when looking at the commit history.
Here are some examples based on different types of branches:

1. **Feature Branch:** When you're adding a new feature, your commit
   message could start with `FEATURE:`. This indicates that the commit
   adds new functionality to the project.

   Example: `FEATURE: Add function to compute averages`

2. **Bug Branch:** If you're fixing a bug, you could start your commit
   message with `BUG:`. This makes it clear that the commit is related
   to bug fixing.

   Example: `BUG: Fix error in average computation function`

3. **Documentation Branch:** When you're updating documentation, you can
   prefix your commit message with `DOCS:`. This shows that the commit
   changes are documentation-related.

   Example: `DOCS: Update contributing guidelines`

4. **Refactor Branch:** If you're refactoring existing code without
   changing its functionality, you could use `REFACTOR:` as a prefix.

   Example: `REFACTOR: Simplify average computation function`

5. **Test Branch:** When you're adding or changing tests, you can use
   the prefix `TEST:`.

   Example: `TEST: Add unit tests for average computation function`

These prefixes are not mandatory, but they are a good way to keep your
commit messages informative and organized. They can be particularly
useful in projects with many contributors, as they allow you to quickly
scan through the commit history and identify the type of changes made in
each commit.

## 5. Pull Request Review Process

Pull requests are a vital part of our workflow. They allow us to
collaboratively review and discuss changes made in a branch before they
are merged into the main branch. This ensures the quality of the code
and helps maintain a cohesive and robust codebase.

When a pull request is opened, it is assigned to another data scientist
for review. The reviewer's role is to thoroughly understand the proposed
changes, evaluate them, and provide constructive feedback. Below is the
step-by-step process:

1. **Understand the Changes**: Begin by reading the pull request
   description. This should give you a good understanding of what the
   proposed changes are and why they were made. If the description is
   not clear or if you have any questions, ask the author of the pull
   request to clarify.

2. **Review the Code**: Go through the changed files and lines of code
   in the pull request. Look for any potential issues or improvements.
   This could include bugs, performance issues, readability issues,
   unnecessary complexity, or deviation from our coding standards and
   practices.

3. **Run the Code**: Check out the branch on your local machine and run
   the code. Verify that it works as expected and achieves the intended
   purpose.

4. **Go Through the Checklist**: Use the provided checklist in the pull
   request template to ensure all our standards are met. This includes
   areas like data preparation, feature engineering, model building,
   code quality, and documentation. Make sure each item is checked off
   and the code meets the requirements.

5. **Provide Feedback**: If you find any issues or have suggestions for
   improvement, provide feedback in the form of comments. Be specific
   and clear in your feedback, and always be respectful and
   constructive. Remember, the goal is to improve the code, not to
   criticize the author.

6. **Approve or Request Changes**: If you're satisfied with the changes
   and all checklist items are met, approve the pull request. If there
   are issues that need to be addressed, select "Request changes" and
   summarize your feedback in the review summary.

The author of the pull request will address your feedback and make
necessary changes. Once you're happy with the updates, approve the pull
request. 

Once approved by the reviewer, and all continuous integration and checks
pass, the pull request can be merged into the main branch. 

Remember, the goal of the pull request review process is to ensure that
we're consistently improving our codebase and maintaining high standards
of quality. This collaborative process not only leads to better code,
but also provides an opportunity for team members to learn from each
other.

### Deciding When to Merge or Keep a Branch Separately

During the Pull Request review process, one important decision to make
is determining when a branch should be merged into the main branch, and
when it should be kept separately for documentation purposes. This
decision should be based on the nature of the changes made in the branch
and the impact they have on the overall project.

Here's a brief guideline on how to make this decision, based on the
[branch types
document](https://github.com/dslp/dslp/blob/main/branching/branch-types.md)
from the Data Science Lifecycle Process:

1. **Bug, Hotfix, and Release branches:** These branches are typically
   created to fix errors, make urgent changes, or prepare for a new
   version release of the project. As such, once the changes have been
   reviewed and approved, these branches should generally be merged into
   the main branch to ensure the project is up-to-date.

2. **Feature branches:** These branches are created to implement new
   functionality into the project. If the feature has been completed and
   properly tested, and the team agrees it adds value to the project,
   the branch should be merged into the main branch.

3. **Data and Model branches:** These branches are used to acquire new
   data or build and test new models. The decision to merge these
   branches can depend on the outcomes. If the new data or models
   improve the project significantly, merging could be the right
   decision. However, if they don't add substantial value, they could be
   kept separately as documentation of the process and outcomes.

4. **Experiment branches:** These branches are generally used for
   exploratory work, testing new ideas or approaches without affecting
   the main project. As these branches are more about learning and
   discovery, they are typically not merged into the main branch.
   Instead, they should be kept as separate records of the experiments
   conducted and the findings.

5. **Docs branches:** These branches are dedicated to updating
   documentation, instructions, or other non-code files. If the updates
   are relevant and necessary for the team or users, these branches
   should be merged into the main branch.

Remember, these are general guidelines and each decision should be made
considering the specifics of your project and the changes made in each
branch. The key is to maintain a clean, efficient, and accurate main
branch that represents the current state of your project.

## 6. Review and Merge Using GitHub

In the context of data science projects, reviewing a pull request is a
critical stage where another data scientist verifies the code, checks
for potential bugs, ensures the code aligns with project standards, and
confirms that the proposed changes meet the requirements defined in the
issue.

To facilitate this process, we recommend watching this instructional
YouTube video: [How to Review a Pull Request on
GitHub](https://youtu.be/lSnbOtw4izI). This video provides a detailed
walkthrough of the review process, demonstrating how to navigate the
GitHub interface, how to examine the changes made in a pull request, how
to leave useful comments, and how to approve or request changes.

Key points covered in the video include:

1. **Navigating to the pull request:** The reviewer needs to go to the
   'Pull requests' tab in the project repository and select the pull
   request they have been assigned to review.

2. **Understanding the changes:** The 'Files changed' tab gives an
   overview of what has been altered. The reviewer should carefully read
   through the proposed changes, keeping an eye out for potential issues
   and areas for improvement.

3. **Leaving comments:** If the reviewer spots a potential issue or has
   a suggestion, they can leave comments directly on the lines of code
   in question. These comments should be clear, concise, and
   constructive.

4. **Requesting changes:** If there are issues that need to be addressed
   before the pull request can be merged, the reviewer can use the
   'Review changes' button to request changes. This provides an
   opportunity to summarize the required changes and give overall
   feedback.

5. **Approving the pull request:** If the reviewer is satisfied with the
   changes, they can use the 'Review changes' button to approve the pull
   request. Once approved, the pull request can be merged into the main
   branch.

Remember, the goal of the review process is to ensure that the quality
of the codebase is maintained and that the changes align with the
project's objectives. It's also an opportunity for team members to learn
from each other and to maintain a clear and structured workflow.

## 7. Close the Issue

After your pull request has been reviewed and the changes have been
merged into the main branch, it's time to close the issue. Closing an
issue signifies that the work described in the issue has been completed
and no further action is needed.

Here's how you can close an issue on GitHub:

1. **Go to the issue:** In your repository, navigate to the 'Issues' tab
   at the top of the page. Locate the issue that you've been working on.

2. **Check the issue:** Before closing an issue, it's important to
   ensure that all the tasks and objectives outlined in the issue have
   been completed. Make sure that your merged pull request has fully
   addressed the issue's goals.

3. **Close the issue:** If everything is in order, you can proceed to
   close the issue. To do this, scroll down to the bottom of the issue
   page and click the 'Close issue' button.

4. **Comment before closing (optional):** It's often a good practice to
   leave a final comment summarizing the work that's been done,
   particularly if the issue discussion has been extensive. This can
   include a brief summary of the changes made, the pull request that
   resolved the issue, or any other relevant information. After leaving
   your comment, click on the 'Comment and close' button.

5. **Confirm the issue is closed:** Once an issue is closed, it will be
   labeled as 'Closed' and it will move from the 'Open' issue list to
   the 'Closed' issue list. You can always reopen it if further work or
   adjustments are required.

Remember, closing an issue is an important step in maintaining an
organized and efficient workflow. It allows team members to have a clear
understanding of what work has been completed, and it keeps your project
board clean and up-to-date.

## Appendix

### Using Labels on Issues and Pull Requests

Labels on issues and pull requests play a crucial role in managing and
organizing your project on GitHub. Here's why:

1.  **Improved organization and prioritization**: Labels categorize your
    issues and pull requests based on their purpose, status, or
    relevance. This makes it easier for you and your team to prioritize
    work.
    
2.  **Efficient filtering**: With labels, you can quickly filter and
    find specific issues and pull requests. You can even filter by
    multiple labels to narrow down your search further.
    
3.  **Enhanced communication**: Labels can communicate the status,
    priority, or type of issue or pull request to collaborators, leading
    to more effective project management and collaboration.

#### Default and Custom Labels

Here's a list of the default labels that GitHub provides, along with the
custom ones added for this project:

| Name | Description | Color | Type |
| --- | --- | --- | --- |
| bug | Something isn't working | d73a4a | Default |
| documentation | Improvements or additions to documentation | 0075ca | Default |
| duplicate | This issue or pull request already exists | cfd3d7 | Default |
| enhancement | New feature or request | a2eeef | Default |
| good first issue | Good for newcomers | 7057ff | Default |
| help wanted | Extra attention is needed | 008672 | Default |
| invalid | This doesn't seem right | e4e669 | Default |
| question | Further information is requested | d876e3 | Default |
| wontfix | This will not be worked on | ffffff | Default |
| ask | Define and scope problem and solution | c9ecff | Custom |
| explore | Explore and document data to increase understanding | f0f29b | Custom |
| experiment | Build features and train models | 8569c6 | Custom |
| data | Get and transform data | 1c587c | Custom |
| model | Prepare model for deployment | 0b4e82 | Custom |
| deploy | Register, package, and deploy model | f79499 | Custom |
| communicate | Write reports, create dashboards, summarize findings, etc. | f9f345 | Custom |
| succeeded | This was successful | 67d157 | Custom |
| failed | This didn't go as hoped | c2021c | Custom |
| onhold | Still seems promising, but let's revisit later | ffd04f | Custom |
| blocked | Blocked due to lack of access to data, resources, environment, etc. | ed9a53 | Custom |

#### Creating Labels Manually Using GitHub's Web Interface

If you prefer, you can also create labels directly through GitHub's web
interface:

1.  Navigate to your repository on GitHub.    
2.  Click on `Issues` in the repository navigation bar.
3.  Click on `Labels`.
4.  Click on `New label`.
5.  Fill out the `Label name`, `Description`, and `Color` fields.
6.  Click on `Create label`.
   
You can repeat steps 4-6 to create as many labels as you need. While
this method is more manual and time-consuming than using GitHub CLI, it
can be a good option if you're not comfortable using the command line or
if you only need to create a few labels.

#### Using GitHub CLI to Create Labels

The GitHub CLI is a powerful tool that allows you to interact with
GitHub directly from your command line. One of its features is the
ability to create labels. Here's how you can do it:

1. Open your text editor and paste the following into it:

```bash
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
```

2.  Save this file as `create_labels.sh` in the directory of your
    choice.    
3.  Open Terminal and navigate to the directory where you saved the
    script.
4.  Run the following command to make your script executable:

```bash
chmod +x create_labels.sh
```

5.  Run the script with the following command:

```bash
./create_labels.sh
```

Your terminal will then execute each command in the script in sequence.
Make sure that you are in the root directory of the git repository where
you want these labels to be added.

For further information, refer to the following resources:

- [Managing
  labels](https://docs.github.com/en/github-ae@latest/issues/using-labels-and-milestones-to-track-work/managing-labels)
- [gh label create](https://cli.github.com/manual/gh_label_create)
- [GitHub CLI](https://cli.github.com/)
- [Creating and Adding Labels to GitHub Pull Requests and
  Issues](https://www.blinkops.com/blog/creating-and-adding-labels-to-github-pull-requests-and-issues)

### Security Best Practices While using Google CoLab

Google Colab is a widely used tool for data analysis, machine learning,
and more, but like all computing environments, it's important to follow
best practices for security. Here are some guidelines:

1. **Do Not Share Sensitive Information**: Avoid hardcoding sensitive
   data such as passwords, API keys, or personal information directly in
   your notebooks. If you need to use such information, consider using
   environment variables or Google Colab's secret manager feature.

2. **Clear Outputs**: Before sharing your notebook, ensure to clear
   outputs that may contain sensitive data. This is especially important
   if you're working with private datasets or displaying information
   that could be sensitive.

3. **Mount Google Drive Cautiously**: When you mount your Google Drive,
   your notebooks will have access to all of your files. Be careful
   about what operations you perform, especially with unfamiliar code,
   to avoid unwanted changes to your files. Also, unmount your Drive
   when you're done using it.

4. **Be Careful with External Code**: Avoid running code that you do not
   trust. Malicious code could potentially access your data or use your
   Colab instance for nefarious purposes.

5. **Run in Private Browsing / Incognito**: To further secure your data,
   consider running Colab in a private browsing or incognito window.
   This can help prevent other websites from accessing data from your
   Colab session.

6. **Regularly Check for Updates**: Google periodically updates Colab
   and its security features. Regularly check for updates to ensure that
   you're using the most secure version.

7. **Use Access Controls**: If you're sharing notebooks, make sure to
   use Google Drive's built-in access controls. You can set your
   notebooks to be viewable or editable only by specific people, people
   within your organization, or make them public, as necessary.

8. **Understand Sharing Risks**: When you share a notebook, the
   recipient can make a copy and modify it. They won't have access to
   your Google Drive unless you explicitly share the drive with them.

Remember, security is a continuous process and requires awareness and
good practices to prevent data breaches and maintain data integrity.

### Why it is not Possible to Use Google Colab with VS Code

The aproach cobining Google Colab, GitHub and VS Code described in the
[How to Connect to VSCode to
Colab](https://colab.research.google.com/github/JayThibs/jacques-blog/blob/master/_notebooks/2021-09-27-connect-to-colab-from-local-vscode.ipynb)
is not longer possible because:

_⚠️ Unfortunately, Google Colab recently prohibited the usage of SSH on
their platform. Using this library may restrict your ability to use
Colab in the future. Learn more in [Google Colab
FAQ](https://research.google.com/colaboratory/faq.html#limitations-and-restrictions)._

[ref](https://github.com/WassimBenzarti/colab-ssh).

Due this SSH usage limitation, it is only possible to use Google Colab
with GitHub but VS Code cannot be used to replace Colab notebooks.

### Working with Data and Colab

This [External data: Local Files, Drive, Sheets, and Cloud
Storage](https://colab.research.google.com/notebooks/io.ipynb#scrollTo=eikfzi8ZT_rW)
notebook summarize how to work with data and Google Colab.

#### Uploading files from your local file system

`files.upload` returns a dictionary of the files which were uploaded.
The dictionary is keyed by the file name and values are the data which
were uploaded.

```python
from google.colab import files

uploaded = files.upload()

for fn in uploaded.keys():
  print('User uploaded file "{name}" with length {length} bytes'.format(
      name=fn, length=len(uploaded[fn])))
```

#### Downloading files to your local file system

`files.download` will invoke a

```python
from google.colab import files

with open('example.txt', 'w') as f:
  f.write('some content')

files.download('example.txt')
```
