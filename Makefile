init: install-deps set-perms hooks
	@echo "🎉 All setup!"

install-deps:
	@echo "Installing dependencies..."
	pip install -r requirements.txt
	@echo "✅ Dependencies installed."

set-perms:
	@echo "Setting script permissions..."
	chmod -R +x ./scripts/
	@echo "✅ Permissions set."

hooks:
	@echo "Installing Git hooks..."
	git config --unset-all core.hooksPath
	pre-commit install
	pre-commit install --hook-type commit-msg
	@echo "✅ Git hooks installed."
