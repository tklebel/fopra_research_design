
index.html: forschungsvorhaben.md forschungsvorhaben.css
	pandoc -t "revealjs"  $(<F) -o $(@F) --smart --standalone --parse-raw --toc --toc-depth=1 \
	-V revealjs-url:reveal.js \
	-V theme=sky \
	--css=forschungsvorhaben.css \
	-V transition=convex 
