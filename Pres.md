<style>
.footer {
    color: black; background: #E8E8E8;
    position: fixed; top: 90%;
    text-align:center; width:100%;
}
p#myPara{
  color: steelblue;
  font-family: garamond;
  font-size: 1.5em;
}
</style>

Developing Data Products
========================================================
author: frusch
date: 25.10.2015


Introduction
========================================================
<p id="myPara">Application for the project is very easy, for which I'm very ashamed. It randomly pick a number from 1 to 100 and your task is to guess what it is. Every number could be guessed in less than 7 guesses. You just need to follow simple strategy.</p>


Game Process
========================================================

<div class="footer" style="margin-top:-100px;font-size:120%;">
Depends on your input app gives you hints.</div>


```r
number<-sample(1:100,1)
input <- 50
if (input == number) {
        "Right!! (For the new game press 'F5')"
        } else if (input>number) {
                "Try lower"
                } else {"Try higher"}
```

```
[1] "Try lower"
```

How to play 
========================================================

![image](img.png)


Could be better
=======
Just have fun. Hope your app is great!

