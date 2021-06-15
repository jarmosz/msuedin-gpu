import sys
import spacy

nlp = spacy.load('en_default')

for line in sys.stdin:
	doc = nlp(line.rstrip())
	result = ""
	for token in doc:
		result = result + " " + token.text
	sys.stdout.write(result.lstrip())