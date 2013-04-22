# micro-grid.less v1.0

A 12 column fluid grid generator built on less.

## About

I built this tool after [Andy Taylor](http://andytaylor.me/) shutted down [cssgrid](http://cssgrid.net), but I wanted to avoid some stuff like:

- Fixed gutter size
- Unused columns
- Unnecessary code

So I ended building a less function to generate only the columns I need, on a simple and 0.367 kb file.

more info about the "why" of this tool on my [blog](http://juanolvera.com)

## Installation

Download or clone the repo and copy the <code>micro-grid.less</code> to your project folder.

## How to use

First import micro-grid.less
```
@import 'micro-grid';
```

Then set your @gutter size on % or leave it and default 1% will be used.
```
@gutter: 2%; 
```

Now, set the columns that you want to use, for example, 3 columns:

```
/* column one of three */
col-1-3 { .cols(4); } /* 12/3 = 4 */
```

Why **4**? Because we are targeting 12 columns if you want 3, you need to divide ( grid size / num of columns) so 12/3 = 4.

And finally the markup:

```
<div class="wrap"> <!-- your container -->
	<div class="grid"> <!-- necessary class to wrap columns -->
		<div class="col-1-3"> <-- class that include our .cols(4); result -->
			<p> First column </p>
		</div>

		<div class="col-1-3">
			<p> Second column </p>
		</div>

		<div class="col-1-3 last">
			<p> Third column </p>
		</div> <! -- we use the last class to remove margin-right -->
	</div> <!-- end of grid -->
</div> <!-- end of wrap -->
```

Our complete style.less file looks like this:

```
@import 'micro-grid';
@gutter: 2%;

col-1-3 { .cols(4); }
```

And that's all!

## Demo

[Demo Page](http://thinkxl.github.io/micro-grid)

## License
Copyright 2013 Juan Olvera

Licensed under the Apache License, Version 2.0