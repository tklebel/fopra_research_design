
all: index.html self_contained.html

index.html: forschungsvorhaben.md forschungsvorhaben.css
	pandoc -t "revealjs"  $(<F) -o $(@F) --smart --standalone --toc --toc-depth=1 \
	-V revealjs-url:reveal.js \
	-V theme=sky \
	--css=forschungsvorhaben.css \
	-V transition=convex 

self_contained.html: forschungsvorhaben.md forschungsvorhaben.css
	pandoc -t "revealjs"  $(<F) -o $(@F) --smart --standalone --toc --toc-depth=1 \
	-V revealjs-url:reveal.js \
	-V theme=sky \
	--css=forschungsvorhaben.css \
	-V transition=convex \
	--self-contained

live:
	git push
	git checkout gh-pages
	git merge master
	git push
	git checkout master
