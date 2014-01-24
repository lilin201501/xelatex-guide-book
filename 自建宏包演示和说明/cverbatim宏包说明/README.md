##说明

##1.
这个宏包基于xverbatim宏包，写它主要是适应了一些大型代码，可以将一个大型代码分个成一些小型的代码，在tex文档中进行注解和说明。具体结构如下：

\begin{cverbatim}{py}
you code one
\end{cverbatim}

\begin{cverbatim}{py}
you code two
\end{cverbatim}

到目前为止只是显示代码，然后代码输入完了之后要使用命令：

\endcodefile[文件夹名字]{文件名不需要写后缀}

这样将会生成一个总的代码文件，方便 你接下来的调试应用。
