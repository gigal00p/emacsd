(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")
(elpy-enable)

(require 'virtualenvwrapper)
(venv-initialize-interactive-shells)
(venv-initialize-eshell)

(provide 'python-setup)
