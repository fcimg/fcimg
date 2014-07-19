
default: template.txt


template.txt:
	touch src/template.txt
	rm src/template.txt
	cat vendor/fusioncharts.js >> src/template.txt
	cat vendor/fusioncharts.charts.js >> src/template.txt


clean:
	echo "Cleaning"