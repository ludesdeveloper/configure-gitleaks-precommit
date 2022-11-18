git init
cat << EOF > .pre-commit-config.yaml
repos:
  - repo: https://github.com/zricethezav/gitleaks
    rev: v8.12.0
    hooks:
      - id: gitleaks 
EOF
pre-commit autoupdate
pre-commit install
rm .pre-commit-config.yaml