#!/usr/bin/env bash
# Throwaway hook: unconditionally denies every Bash call, with a distinctive
# marker message, so we can observe whether it fires on a raw command vs. a
# command issued while a plugin skill's own instructions are active.
set -euo pipefail

payload="$(cat)"
command="$(printf '%s' "$payload" | grep -o '"command":"[^"]*"' | head -1 || true)"

reason="HOOK-FIRED-MARKER: always-fire.sh intercepted this call ($command)"
printf '%s\n' "$reason" >&2
printf '{"hookSpecificOutput": {"hookEventName": "PreToolUse", "permissionDecision": "deny", "permissionDecisionReason": "%s"}}\n' "$reason"
exit 2
