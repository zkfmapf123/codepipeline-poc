master:
	git add . && git commit -m "wip" && git push origin master

dev:
	git add . && git commit -m "wip" && git push origin dev

prd:
	git add . && git commit -m "wip" && git push origin prd

stg:
	echo hello-stg >> README.md
	git add . && git commit -m "wip" && git push origin stg