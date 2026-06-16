#!/usr/bin/env bash
# Mesmo script — usado tanto pelo Claude Code quanto pelo Copilot.
# Caminho único para evitar divergência.
bash "$(git rev-parse --show-toplevel)/.claude/harness/init.sh"
