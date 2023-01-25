    // increase decrease
    
        let count = 0;
        
        document.querySelector("#decrease").onclick = function(){
            count -= 1;
            if(count >= 0){
                document.getElementById("number").innerHTML = count;
                console.log(count);
            }
        }

        document.getElementById("reset").onclick = function(){
            count = 0;
            document.getElementById("number").innerHTML = count;
            console.log(count);
        }

        document.querySelector("#increase").onclick = function(){
            count += 1;
            document.getElementById("number").innerHTML = count;
            console.log(count);
        }

  