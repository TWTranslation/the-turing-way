(rr-make-debugging)=

# 调试 Makefile

写入Makefile时， 有时可以看到在 Makefile 中找到错误或 bug 的 个变量值是有用的。 To facilitate
this, Make contains two commands: `info` and `error`, and there is a debug
mode to Make.

With the `info` command you can print the current value of a variable to
stdout, while Make is processing the file. 例如，在 上面的 Makefile 中，您可以添加：

```makefile
$(info $$DATA = $(DATA))
```

This will print `DATA = data/action.csv ... data/western.csv`.

With the `error` command you can stop the execution of Make at a certain
point in the Makefile. 当您想打印一个 变量的值而不再运行时，这将是有用的：

```makefile
$(error $$DATA = $(DATA))
```

Finally, you can also debug the Makefile by running Make with the debug flag:
`make -d`. This will print all the rules (including built-in ones) that Make
tries for each of the targets, and whether or not a rule needs to be run.

If you only want to print the rules that Make will run and not actually run
them, you can use `make -n`. These last two options can also be combined, so
that you see the debug output and Make doesn't run anything: `make -dn`.
