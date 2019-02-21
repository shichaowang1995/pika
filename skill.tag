<skill>
  <div class="skill">
    <p>This Pikachu has these abilities:</P>
    <div class="ability">
      <input type="text" ref="ab" placeholder="Enter ability">
        <button type="button" name="button" onclick={addAb}>Learn Ability</button>
    </div>
    <div show={ myAb.length == 0 }>
      <p>No Abilities</p>
    </div>
    <div each={ myAb } class="abili">
      <p>{ caption }</p>
      <button type="button" name="button" onclick={ remove }>Forget Ability</button>

    </div>
  </div>
  <style media="screen">
    .skill{
      margin-top: 40px;
    }
    .abili{
      display: inline-block;
      margin-top: 5px;
      border: solid 1px;
    }
  </style>
  <script type="text/javascript">
    this.myAb = [
      {
        caption: "Move"
      },
      {
        caption: "Lightning Rod"
      },
      {
        caption: "Hide"
      }
    ];
    var that = this;

    this.remove = function(event){
      console.log('EVENT:', event);
      var abObj = event.item;
      var index = that.myAb.indexOf(abObj);
      that.myAb.splice(index, 1);
      that.update();
    }

    this.addAb = function(event){
      console.log(event);
      var caption = this.refs.ab.value;
      var abli = { caption: caption };
      this.myAb.push(abli);
      this.refs.ab.value = "";
    }
  </script>
</skill>
