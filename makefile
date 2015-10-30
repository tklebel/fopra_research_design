
index.html: forschungsvorhaben.md forschungsvorhaben.css
	pandoc -t "revealjs"  $(<F) -o index.html --smart --standalone \
	-V revealjs-url:reveal.js \
	-V theme=sky \
	--css=forschungsvorhaben.css \
	-V transition=convex 
