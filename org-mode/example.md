<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#sec-1">1. Title</a>
<ul>
<li><a href="#sec-1-1">1.1. Subtitle. Enter M-&lt;RET&gt; to create another item of this kind</a></li>
<li><a href="#sec-1-2">1.2. Another Subtitle. You can do M-up and M-down to toggle the items</a></li>
</ul>
</li>
<li><a href="#sec-2">2. Markup</a></li>
<li><a href="#sec-3">3. Tables</a></li>
<li><a href="#sec-4">4. Export to other formats</a></li>
<li><a href="#sec-5">5. Giving the title using metadata</a></li>
<li><a href="#sec-6">6. Source code</a></li>
<li><a href="#sec-7">7. LaTeX integration</a></li>
<li><a href="#sec-8">8. Todo stuff</a>
<ul>
<li>
<ul>
<li><a href="#sec-8-0-1">8.0.1. <span class="todo TODO">TODO</span> explain todo lists (if you hit SHIFT META [RET], another todo item will be created in current list)</a></li>
<li><a href="#sec-8-0-2">8.0.2. <span class="done DONE">DONE</span> Explain some odd things going on in program (if you hit C-c C-t, todo item will be marked as done)</a></li>
<li><a href="#sec-8-0-3">8.0.3. <span class="todo TODO">TODO</span> If you want to add deadlines, you can use C-c C-d that pops up a calender (use SHIFT up/down to scroll through calender)</a></li>
</ul>
</li>
</ul>
</li>
</ul>
</div>
</div>

This example org file is taken from talk by Harry Schwartz. Watch it [here](https://www.youtube.com/watch?v%3DSzA2YODtgK4&index%3D4&t%3D688s&list%3DWL)

# Title<a id="sec-1" name="sec-1"></a>

Random text

## Subtitle. Enter M-<RET> to create another item of this kind<a id="sec-1-1" name="sec-1-1"></a>

## Another Subtitle. You can do M-up and M-down to toggle the items<a id="sec-1-2" name="sec-1-2"></a>

# Markup<a id="sec-2" name="sec-2"></a>

**bold**, *italic*, `verbatim`, <del>strikethrough</del>, 

-   bulleted
-   list

**Use C-c C-l to insert a link**
[Org-mode website](http://orgmode.org) -> You can go to this link with C-c C-o

# Tables<a id="sec-3" name="sec-3"></a>

You can create a table with pipe (|), and then on the next line |- and TAB, this will keep rearranging the table
You can use TAB to shift to different cells. 
You can use M-up/down/left/right to toggle the rows/columns

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="left" />

<col  class="left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="left">Data</th>
<th scope="col" class="left">Some</th>
</tr>
</thead>

<tbody>
<tr>
<td class="left">Data again</td>
<td class="left">Some another data</td>
</tr>


<tr>
<td class="left">oops</td>
<td class="left">another data yet again</td>
</tr>
</tbody>
</table>

# Export to other formats<a id="sec-4" name="sec-4"></a>

Use C-c C-e to export to other formats 

# Giving the title using metadata<a id="sec-5" name="sec-5"></a>

If you export this as HTML, it will give title as example, same as the filename. 
In order to give your own title, you can give metadata using #+ symbol

# Source code<a id="sec-6" name="sec-6"></a>

You can edit the code inside BEGIN<sub>SRC</sub> block by C-c ' (single quote). This will open new buffer for editing that code.
Also, you don't need to type BEGIN<sub>SRC</sub> and END<sub>SRC</sub>, there's a shortcut for that. The block can be created by <s TAB

    num_dict = {}
    def fact(num):
        if num == 1:
            return 1
        if (num - 1) in num_dict:
            return num * fact(num - 1)
        else:
            num_dict[num-1] = fact(num - 1)
            return num * fact(num - 1)
    print(fact(4))

# LaTeX integration<a id="sec-7" name="sec-7"></a>

-   Characters: &alpha; &rarr; &beta;
-   \(O(n \log n)\)

\begin{align*}
    F &= ma
\end{align*}

# Todo stuff<a id="sec-8" name="sec-8"></a>

### TODO explain todo lists (if you hit SHIFT META [RET], another todo item will be created in current list)<a id="sec-8-0-1" name="sec-8-0-1"></a>

### DONE Explain some odd things going on in program (if you hit C-c C-t, todo item will be marked as done)<a id="sec-8-0-2" name="sec-8-0-2"></a>

### TODO If you want to add deadlines, you can use C-c C-d that pops up a calender (use SHIFT up/down to scroll through calender)<a id="sec-8-0-3" name="sec-8-0-3"></a>