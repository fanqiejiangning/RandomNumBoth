<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
    <title>33以内的随机数</title>
    <style>
        .numList{
            display:inline-block;width: 35px;margin-right:3px;text-align: center;
        }
    </style>
</head>
<body>
<button onclick="getRandom()" >点击获取随机数</button>
<div class="numBox" ></div>
<script>

    /*获取随机数*/
    function RandomNumBoth(Min,Max){
        var Range = Max - Min;
        var Rand = Math.random();
        var num = Min + Math.round(Rand * Range); //四舍五入
        return num;
    }

    function getRandom(){
        var randomArr = [];
        var randomHtml = [];
        for(var i = 0; i < 7; i++){
            getnum(randomArr,i);
        }
        var randomArr1 = randomArr.slice(0,6);
        randomArr1.sort(function (m, n) {
            if (m < n) return -1;
            else if (m > n) return 1;
            else return 0
        });
        for(var k = 0; k < randomArr1.length; k++){
            randomHtml.push('<span class="numList">'+randomArr1[k]+'</span>')
        }
        randomHtml.push('<span class="numList">'+randomArr[randomArr.length-1]+'</span>');
        var $numBox = document.getElementsByClassName('numBox')[0];
        //添加label ，存放指标名称
        var $div = document.createElement("div");
        $div.innerHTML = randomHtml.join('');
        $numBox.appendChild($div);
    }
    function getnum(arr,index){
        var num1 = index == 6 ? RandomNumBoth(1,9) : RandomNumBoth(1,33);
        if (arr.indexOf(num1) === -1) {
            arr .push(num1);
        }else{
            getnum(arr,index);
        }
    }

</script>
</body>
</html>
