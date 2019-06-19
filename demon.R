aaa<-readLines("C:/Users/AKHIL/Desktop/New folder/Demonetisation.txt")
aaa
text1<-paste(readLines("C:/Users/AKHIL/Desktop/New folder/Demonetisation.txt"),collapse = " ")
View(text1)
text1
text1<-tolower(text1)
print(stopwords())
text3<-removeWords(text1,stopwords())
text3
bag_of_word2<-str_split(text3," ")###breaking document into words
bag_of_word2
str(bag_of_word2)
bag_of_word2<-unlist(bag_of_word2)
bag_of_word2
wordcloud(bag_of_word2,min.freq = 10)

library('syuzhet')
library('sentimentr')

mysent1<-get_nrc_sentiment(text3)
mysent1
str(mysent1)

ab1=as.matrix(mysent1)

barplot(ab1,main='Modi Demonetisation',xlab = 'Sentiment Breakup',ylab='Score',col=c('Red'))
