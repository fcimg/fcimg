VERSION=0.2

default: template.txt

template.txt:
	touch src/template.txt
	rm src/template.txt
	cat vendor/fusioncharts.js >> src/template.txt
	cat vendor/fusioncharts.charts.js >> src/template.txt

release: template.txt
	rm -rf build/fcimg
	cp -r src build/fcimg
	cd build && zip -r fcimg-$(VERSION).zip fcimg/

clean:
	echo "Cleaning"