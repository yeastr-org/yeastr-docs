Yeastr Features
===============

Introduction
------------

Yeastr makes some AST transformation more easy to accomplish.

Yeastr focus is on static transformations.

Yeastr is not a language. it's tied to the python syntax.

Yeastr helps backporting code to python3.8

.. warning:: Our AST transformations are not idempotent

.. warning:: As always be careful, one wrong input could crash the interpreter

Macros
------

`Explained here <_impl_macros.html>`__

Named Loops
-----------

History
"""""""

`This StackOverflow.com question <https://stackoverflow.com/questions/189645/how-can-i-break-out-of-multiple-loops>`__

Is just a fraction of the issue and already suggests to create your own solution.

`PEP3136 <https://peps.python.org/pep-3136/>`__ Keeps the focus on break/continue

Our approach shifts the focus around the simple fact that you give a name to your loop

The break/continue "keywords" are then implemented using a single integer bitfield

Rationale
"""""""""

- Why should one use the new loops syntax?

Because it is meant to avoid the need of refactoring, it's a clear API.

- What do you mean?

You usually start with a for, then you figure you need to enumerate, then you figure you need a while instead... it's 3 times you have to change names around and deal with index initialization, increments and so on, this distracts you from the idea your're implementing.

With yeastr, you start with a for and promote it to For when you need to, your named item doesn't need refactoring, your enumerated index have a uniform name and you never have to refactor into a while

- What else?

Please look at `examples <https://github.com/yeastr-org/yeastr-test-proj/blob/dev/src/yeastr_test/namedloops.pyy>`__ and their `output <https://github.com/yeastr-org/yeastr-test-proj/blob/dev/localci/out/script_namedloops_py38>`__

and `our namedloops reference <_impl_namedloops.html>`__

