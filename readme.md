Less for Jekyll
===============

This gem provides a [Jekyll](http://github.com/mojombo/jekyll) converter for
[Less CSS](http://lesscss.org/) files.

Basic Setup
-----------
Install the gem:

	[sudo] gem install jekyll-less

In a plugin file within your Jekyll project's _plugins directory:

	# _plugins/my-plugin.rb
	require "jekyll-less"

Place .less files anywhere in your Jekyll project's directory.  These will be
converted to .css files with the same directory path and filename. For example,
if you create a Less file at _css/my-stuff/styles.less_, then the corresponding
css file would end up at _css/my-stuff/styles.css_.

Important Note
--------------

__As of v0.0.2, this is no longer required, and the header must be removed.__

All .less files __MUST__ have a [YAML Front Matter](http://wiki.github.com/mojombo/jekyll/yaml-front-matter)
header, even if empty.  Jekyll will only convert files that have a valid Front
Matter header, so if you do not include this, the files will not be converted.
This header will be removed from the final CSS file, so feel free to put
whatever you want in it, or nothing at all.

Bundler Setup
-------------
Already using bundler to manage gems for your Jekyll project?  Then just add

	gem "jekyll-less"

to your gemfile and create the following plugin in your projects _plugins 
directory.  I've called mine bundler.rb.  This will automatically require all 
of the gems specified in your Gemfile.

	# _plugins/bundler.rb
	require "rubygems"
	require "bundler/setup"
	Bundler.require(:default)

Credit
------
This gem was originally based on this [gist](https://gist.github.com/760265) by
[joshbrown](https://github.com/joshbrown).  As of v0.0.2 it is a complete rewrite.
