# Purpose

To create a minimal recreation of the bug documented in [this issue](https://github.com/joaotavora/eglot/issues/1046).

# Steps to reproduce

Install go (I used go1.19).
Install gopls (`go install golang.org/x/tools/gopls@latest`).
Make sure gopls is on the path.

Clone this repo.

Run `emacs -Q`

Evaluate the forms in `.emacs.d/init.el` to set up Emacs to reproduce the bug.

Cd to the root of the repository and run `go get github.com/gdamore/tcell/v2` to install the required go package.

Open the `main.go` file in emacs.

Run `M-x eglot` to initialize eglot.

Now, move your cursor to the end of line 9 (right after "tcell"), press `.` and then run `M-x completion-at-point`. Emacs should hang for several seconds here.
