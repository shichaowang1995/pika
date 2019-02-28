<pikachu>

<img src="img/pikachu.png" alt="">
  	<p>The pikachu says: { magicAlpha }</p>
  	<button onclick={ talkToCat }>"Pika"</button>

  	<script>
  		var that = this;
  		console.log('pikachu.tag');


  		this.magicAlpha = "...";

  		talkToCat(event) {
  			var randomNum = Math.floor(Math.random()*(180 - 100) + 100);

  			/* step 2, trigger some action, and pass parameters */
  			observable.trigger('meow', randomNum);
  		}

  		observable.on('woof', function(someAlpha){

  			that.magicAlpha = someAlpha;
  			that.update();
  		});

  		observable.on('reset', function(){

  			that.magicAlpha = "...";
  		});

  	</script>

<style>
  :scope {
    display: block;
    border: 1px solid red;
    margin-top: 1em;
    padding: 1em;
    width: 50%;
  }
  img {
    width: 50px;
    vertical-align: middle;
  }
</style>
</pikachu>
