  rm(list = ls())
setwd("/home/vladi-fisher/Documents/Grodno/")
  
    
      test <- "That Works !"
      
     ln <- log(10,  base = 2)
     
     cylenderRadius <- 1.5
     cylenderHeight <- 2 
     
     volume <- pi * cylenderRadius ^ 2 * cylenderHeight 
     
     cat("Volume  is ", volume)
     
     a <- 6 
     
     is.complex(a)
#------------------------------------------------------------------------------------------        
     task3 <- "2" 
     task3 <- as.numeric(task3) + 1 
          
     t <- 3 
     u <- 3L
     
     equal <- t * u
#------------------------------------------------------------------------------------------   
     one <- 1 
     tenFactor <- as.factor(10)
     test <- one - as.numeric(as.character(tenFactor))
#------------------------------------------------------------------------------------------        

     v1 <- TRUE + FALSE 
#------------------------------------------------------------------------------------------   
     xVector <- c(1:20, 100.5)
      cat("First is:", xVector[1], "21st is:", xVector[21])   
      xVector <- as.numeric(xVector)
      print(xVector[c(1, 21, 5)])
      
      xVector <- xVector - min(xVector)
      xVector <- xVector/max(xVector)* 2 - 1 
      
      poker <-     c(2,   4, 1, -8,  1,   3, -5)
      blackjack <- c(-1, -2, 4,  0,  1,  -2, -1)
      roulette <-  c(0,  -3, 3,  NA, 2,   1, -2)    
  
      totalLost <-  poker + blackjack 
      totalLost <- sum(totalLost) - sum(roulette, na.rm = TRUE)
      roulette[4] <- 3 + totalLost
      
      
      cards <- c("hearts" = 11, "spades"  = 9, "clubs" = 13, "diamonds" =13 )
      names(cards)
      
      probs <- cards["spades"] / sum(cards)
      names(probs) <- "Probability"
      
#---------------------------------------------------------------------
     lv <- poker + blackjack + roulette 
      which(lv > 0)
      #---------------------------------------------------------------------
      
      poker <-     c(2,   4, 1, -8,  1,   3, -5)
      blackjack <- c(-1, -2, 4,  0,  1,  -2, -1)
      roulette <-  c(0,  -3, 3,  1, 2,   1, -2) 
      
      firstGame <- poker + blackjack
      day1 <- roulette > poker 
      day2 <- roulette > blackjack
      # firstGame <- unique(firstGame)
      # roulette <- unique(roulette)
      winner <- which(day1 > day2)
#--------------------------------------
      xVector
      xVector <- c(1:20, 100.5)
      
      xVectorMean <- mean(xVector)
      xVectorSd   <- sd(xVector)
      xVectorMedian <- median(xVector)
      xVectorMad <- mad(xVector, center = median(xVector))
      cuttoff <- xVectorMedian + 3 * xVectorMad
      
      cleanVector <- which(xVector < cuttoff)
      #--------------------------------------
     
      n = 1000
      sim <- rnorm(n)
      cutPoint <- median(sim) + 3 * mad(sim)
      simClean <- which(sim > cutPoint | (sim < -cutPoint))
#--------------------------------------------------------
      
      trimmed.x <- mean(xVector, trim = 0.1 )
    pi <- 3 
#--------------------------------------------------------------------------------------------------------
    set.seed(9898)
    x <- rnorm(100)
    kurtosis(x)
    
    a1 <- t(matrix(rep(1:3, each = 3 ), ncol = 3 ))
    a2 <- matrix(rep(1:3, each = 3 ), ncol = 3, byrow = TRUE)
    a3 <- matrix(1:3, nrow = 3, ncol =3)
    a1[,2][2] <- 4
    diag(a2)[2] <- 4
#-------------------------------------------------------------------------------------------
    rm(list = ls())
    a <- data("mtcars")
    head(mtcars)
    tail(mtcars)
    
    mtcars$am <- as.factor(mtcars$am)
    str(mtcars)
    mtcars$am1 <- NULL
#--------
  summary(mtcars$am)
levels(mtcars$am)    
#-------------------------------------------------------------------------------------------
# Create a data frame 
v1 <- 1:10; v2 <- seq(0, 1, length = 10) ; v3 <- letters[1:10]

df <- data.frame(vector1 = v1, vector2 = v2, ABC = v3)
#----------------------------------------------------------------

df1 <- data.frame( Numvec = (sample(1:20, 10)), Charvector = letters[1:10], stringsAsFactors = FALSE)
df1$fact <- factor(rep("male", "female" ,times = 5))
