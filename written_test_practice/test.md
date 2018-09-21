In this code, the `do..end` defines a block.

On line 1, we initialize the local variable `num` to the Integer value `1`.

On line 3, we invoke the `loop` method, and define a block with no parameters as the argument which spans lines 3-6. Within the block, we reassign the local variable `num` to the Integer value `2` before breaking out of the `loop`. 

In Ruby, variables initialized in an outer scope can be accessed by an inner scope, but not vice versa. An inner scope is defined by a block, which in this problem lines 3-6 define a block, meaning we've also defined an inner scope. We initialized local variable `num` in the outer scope on line 1, which means `num` is accessible and can be reassigned on line 4 in the inner scope.

These variable scoping rules are why line 8 returns `2` rather than `1`.
