#hc

#Importing dataset
dataset = read.csv("Mall_customers.csv")
X = dataset[4:5]

#Using dendrograms
dendrogram = hclust(dist(X,method = 'euclidean'),method = 'ward.D')
plot(dendrogram,
     main = paste('Dendrogram'),
     xlab = 'Customers',
     ylab = 'Euclidean Dist')

#Fitting hc to dataset
hc = hclust(dist(X,method = 'euclidean'),method = 'ward.D')
y_hc = cutree(hc,5)

#Visualizing
library(cluster)
clusplot(X,
         y_hc,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste("Cluster of clients"),
         xlab = "Annual Income",
         ylab = "Spending Score")