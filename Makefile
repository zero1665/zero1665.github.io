deploy:
	jekyll build
	git add -A
	git commit -m "update post"
	git push origin master
	echo "deploy succeed"
