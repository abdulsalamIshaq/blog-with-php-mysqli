<?php 
$id = $_GET['id'];

$sql = mysqli_query($conn, "SELECT post.*, comment.* FROM comment JOIN post ON post.postID = comment.postID WHERE post.postID = '$id'");
$com_count = mysqli_num_rows($sql);

if(mysqli_num_rows($sql) > 0){
    while($row = mysqli_fetch_assoc($sql)){
        echo " <div class='comment'>
        <div class='comment-header d-flex justify-content-betwee'>
          <div class='user d-flex align-items-center'>
            <div class='image'><img src='img/user.svg' alt='...' class='img-fluid rounded-circle'></div>
            <div class='title'><strong>".$row['comName']."</strong><span class='date'>".$row['comDate']."</span></div>
          </div>
        </div>
        <div class='comment-body'>
          <p>".$row['comCont']."</p><hr>
        </div>
      </div></div>";
    }
}?>
<div class="add-comment">
<header>
  <h3 class="h6">Leave a reply</h3>
</header>
<form action="" method="post" class="commenting-form">
  <div class="row">
      
<?php $postid = mysqli_real_escape_string($conn, $_POST['postID']);
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $content = mysqli_real_escape_string($conn, $_POST['comCont']);

    if(isset($_POST['comment']) and !empty($content)){
        $sql = "INSERT INTO comment (postID, comName, comCont) VALUES('$postid', '$name', '$content')";
        if(mysqli_query($conn, $sql) === TRUE){
            echo "your comment is uploaded successfully";
        }
    }elseif(isset($_POST['comment']) and empty($content) and empty($name)){
        echo "All field are required please !!!";
    }?>
   
          <br>
        <div class="form-group col-md-6">
          <input type="text" name="name" id="username" placeholder="Name" class="form-control">
        </div>
        <div class="form-group col-md-6">
          <input type="hidden" name="postID" id="username" value="<?php echo $_GET['id'];?>" class="form-control">
        </div>
       <!-- <div class="form-group col-md-6">
          <input type="email" name="username" id="useremail" placeholder="Email Address (will not be published)" class="form-control">
        </div>-->
        <div class="form-group col-md-12">
          <textarea name="comCont" id="usercomment" placeholder="Type your comment" class="form-control"></textarea>
        </div>
        <div class="form-group col-md-12">
          <button type="submit" name="comment" class="btn btn-secondary">Submit Comment</button>
        </div>
      </div>
    </form>
  </div>
