- i did some changes and im doing more changes in my pwndbg, some of there is on [.gdbinit](<./.gdbinit>) file
```
~ git diff
diff --git a/pwndbg/commands/context.py b/pwndbg/commands/context.py
index 38c26ee..cf3c5a1 100644
--- a/pwndbg/commands/context.py
+++ b/pwndbg/commands/context.py
@@ -573,6 +573,9 @@ def get_regs(regs: List[str] = None):

         if pwndbg.gdblib.config.show_flags:
             regs += pwndbg.gdblib.regs.flags.keys()
+
+        if pwndbg.gdblib.config.show_flags:
+            regs += ['cs', 'ds', 'es', 'fs', 'gs', 'ss']

     changed = pwndbg.gdblib.regs.changed
```
