<owner>

<img src="img/owner.png" alt="">
  	<p>The owner's heart rate: { magicNum }</p>
  	<button onclick={ talkToDog }>Pat Pikachu</button>

  	<script>
  		var that = this;
  		console.log('owner.tag');


  		this.magicNum = 100;

  		var alphabet = ['pika','pikapika','chu~','pikapi','pikapika!chu~','pika!','pika~','chu!','chu','pikapi!','pikapi~','pikapika!','pikapika~'];

  		talkToDog(event) {
  			var randomAlpha = Math.floor(Math.random() * alphabet.length);

  			observable.trigger('woof', alphabet[randomAlpha]);
  		}

  		/* step 3, on receiving trigger receive data, perform action */
  		observable.on('meow', function(someNum){

  			that.magicNum = someNum;
  			that.update();
  		});

  		observable.on('reset', function(){

  			that.magicNum = 0;
  		});

  	</script>

<style>
  :scope {
    display: block;
    border: 1px solid dodgerblue;
    margin-top: 1em;
    padding: 1em;
    width: 50%;
  }
  img {
    width: 50px;
    vertical-align: middle;
  }
</style>
</owner>
