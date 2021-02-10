.PHONY: typehint
typehint:
	mypy src/ tests/

PHONY: test
test:
	pytest tests/*.py

.PHONY: lint
lint:
	pylint --errors-only --score=y src/ tests/

.PHONY: checklist
checklist: black lint typehint test

.PHONY: black
black:
	black -l 79 src/*.py

.PHONY: clean
clean: 
	find . -type f -name "*.pyc" | xargs rm -fr
	find . -type d -name __pycache__ | xargs rm -fr
