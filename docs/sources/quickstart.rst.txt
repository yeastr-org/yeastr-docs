Yeastr Quickstart
=================

Requirements
------------

- You are not a beginner with python

- You are concious yeastr features must be used wisely

  + It gets exponentially harder to debug your code

  + macros are good for sketching out, and temporarily bypass some rule;
    but improper use will make your source code almost unreadable

  + Always think about reusability, don't go monolithic

  + Even a little expr macro left in a ``.py`` is a blunder that makes your module unusable.
    Triple check if you are ``mv module{.ypy,.py}`` (if you used ypy as a prototype)

Filename Convention
-------------------

- ``.ypy`` extension is for files using the import_hooks machinery.
  Other projects can use them as long they also use (the same version of) yeastr

- ``.pyy`` extension is for files that need preprocessing or amalgamation. Never importable

- ``.py`` only through decorators, might be a bad experience anyway. Expect meaningless errors

Be sure to include them in your MANIFEST.in
