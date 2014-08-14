dirtycheck:
	@python dirtycheck.py . --quiet || (echo "Git repository is dirty: Please review and try again."; exit 1)
	@echo "Git repository is clean: Continuing."

deploy: dirtycheck
	@echo "Congratulations! You can deploy!"
	@echo "Well.. you could if this was a real application."
