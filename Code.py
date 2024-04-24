#import nltk lib ,stopwords and counter
import nltk
from nltk.corpus import stopwords
from collections import Counter

#download stopwords
nltk.download('stopwords')

#read the contents of the file
with open("paragraphs.txt", 'r') as file:
    text = file.read()

#remove stopwords from text
stop_words = set(stopwords.words('english'))
words = nltk.word_tokenize(text)
filtered_text = [word.lower() for word in words if word.lower() not in stop_words and word.isalnum()]

#word frequency
word_freq = Counter(filtered_text)

#print results
print("Word Frequency Count:")
print(word_freq)