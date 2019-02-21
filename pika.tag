<pika>
  <img src="img/{ petImage }.gif">


  <div>
    <div class="bar energy">
      <div style="width:{ energy }%;">&nbsp;</div>
    </div>
    <p>Energy: { energy }</p>
  </div>


  <button onclick={ feed }>Feed</button>
  <button onclick={ unfeed }>Not Feed</button>

  <div if={!userInfo}>
    <label>What you want to teach Pikachu to say:</label>
    <input type="text" ref="userWord" placeholder="Enter the words">
      <button onclick={ userCon }>Confirm</button>
  </div>
  <div if={userInfo}>

    <h1>Pikachu said:{userInfo.userWord}</h1>
    <button onclick={userNew}>Teach some new words</button>
  </div>

  <script>
    //make a copy of my pet object and call it that
    var that  = this;

    //initial state
    this.energy = 50;
    this.petImage = "neutral";

    //tell DOM window to decrease energy every four second
    //console.log(that);
    window.setInterval(function(){
      that.decEnergy();
      console.log("wait");
      that.update();
      that.checkStatus();
      <!-- console.log(this); -->
    }, 4000);


    decEnergy() {
/*js if statement shorthand*/
      this.energy = this.energy - 10 < 0 ? 0 : this.energy - 10;
    }

    incEnergy() {
      console.log(this.energy);
      this.energy = this.energy + 10 > 100 ? 100 : this.energy + 10;
    }

    checkStatus() {
      if (this.energy >= 70){
        this.petImage = "cute";
      } else if (this.energy <= 30){
        this.petImage = "cry";
      }else{
        this.petImage = "neutral";
      }
    }

// functions that respond to events
    feed(e) {
      this.incEnergy();
      this.checkStatus();
    }

    unfeed(e) {
      this.decEnergy();
      this.checkStatus();
    }

    this.userCon = function(e){
      this.userInfo = {
        userWord: this.refs.userWord.value,
      }
    }
    this.userNew = function(e){
      this.userInfo = false;
    }

  </script>

  <style>
/*styles that will be applied to the root level of my tag*/
  :scope{
    margin:auto;
  }

  img{
    weight:auto;
    height:300px;
  }

  </style>
</pika>
