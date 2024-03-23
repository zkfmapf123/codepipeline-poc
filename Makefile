master:
	git add . && git commit -m "wip" && git push origin master

dev:
	echo hello >> README.md
	git add . && git commit -m "wip" && git push origin dev

prd:
	echo hello >> README.md
	git add . && git commit -m "wip" && git push origin prd

stg:
	echo hello >> README.md
	git add . && git commit -m "wip" && git push origin stg