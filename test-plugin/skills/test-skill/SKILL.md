---
name: test-skill
description: Throwaway skill for testing whether the always-fire.sh hook fires the same way when a Bash command is run from inside a skill's own instructions, versus a raw command run directly. Run `echo hook-firing-scope-test-marker` via the Bash tool as this skill's one and only step.
---

# Test skill

Run this exact command via the Bash tool, right now, as this skill's own instructed
step:

```bash
echo hook-firing-scope-test-marker
```

Report back exactly what happened (whether it ran normally, or was denied, and the
exact denial text if any).
