<?php include "include/function.php";?>
<!DOCTYPE html>
<html>
  <head>
  <base href="/9jareport/">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <?php
    $sql = mysqli_query($conn, "select * from sitedetails");
    $details = mysqli_fetch_assoc($sql);
    ?>
    <?php 
    $id = $_GET['id'];

    $query = mysqli_query($conn, "select * from post where postID = '$id'");
    $postTitle = mysqli_fetch_assoc($sql);
    ?>
    <title> <?php echo $details['siteTitle'];?> - <?php echo $postTitle['postTitle'];?></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Open Sans-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
    <!-- Fancybox-->
    <link rel="stylesheet" href="vendor/@fancyapps/fancybox/jquery.fancybox.min.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
  <div class="container">
    <header class="header">
      <!-- Main Navbar-->
      <?php include "include/nav.php";?>

    </header>
    <div class="container">
      <div class="row">
        <!-- Latest Posts -->
        <main class="post blog-post col-lg-8"> 
        

          <?php error_reporting(0); fetch_for_read_more();?>
          <div class="post-comments">
                  <header>
                    <h3 class="h6">Post Comments</h3>
                  </header>
         <?php 

          $postid = mysqli_real_escape_string($conn, $_POST['postID']);
          $name = mysqli_real_escape_string($conn, $_POST['name']);
          $content = mysqli_real_escape_string($conn, $_POST['comCont']);
      
          if(isset($_POST['comment']) AND !empty($content)){
              $sql = "INSERT INTO comment (postID, comName, comCont) VALUES('$postid', '$name', '$content')";
              if(mysqli_query($conn, $sql)== true){
                  //echo "Your comment has been uploaded successfully";
                  //header("location:post.php>");
              }
                
          }
?>

<div class="comment">
                    
                      
<?php
$sql = mysqli_query($conn, "SELECT post.*, comment.* FROM comment JOIN post ON post.postID = comment.postID WHERE post.postID = '$id' ORDER BY comment.comID DESC");
$com_count = mysqli_num_rows($sql);

if(mysqli_num_rows($sql) > 0){
    while($row = mysqli_fetch_assoc($sql)){?>

					<div class="comment-header d-flex justify-content-between">
					  <div class="user d-flex align-items-center well">
                        <div class="image"><img src="img/user.svg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="title"><strong><?php echo $row['comName'];?></strong><span class="date"><?php echo $row['comDate'];?></span></div>
                      </div>
                    </div>
                    <div class="comment-body">
                      <p><?php echo $row['comCont'];?></p>
                    </div>
                  </div>
                  <div>
                  
    <?php }}
    if(isset($_POST['comment']) AND empty($content) and empty($name)){
        echo "All field are required please !!!";
    }
    ?>
      </div>
      
                <div class="add-comment">
                  <header>
                    <h3 class="h6">Leave a reply</h3>
                  </header>
                  <form action="" class="commenting-form" method="post">
                    <div class="row">
                      <div class="form-group col-md-6">
                        <input type="text" name="name" id="username" placeholder="Name" class="form-control" required>
                      </div>
                      <div class="form-group col-md-6">
                        <input type="hidden" name="postID" id="useremail" value="<?php echo $_GET['id'];?>" class="form-control" required>
                      </div>
                      <div class="form-group col-md-12">
                        <textarea name="comCont" id="usercomment" placeholder="Type your comment" class="form-control" required></textarea>
                      </div>
                      <div class="form-group col-md-12">
                        <button type="submit" name="comment" class="btn btn-secondary">Submit Comment</button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </main>

        <?php include "include/sidebar.php";?>
        
      </div>
    </div>
    <!-- Page Footer-->
    <?php include "include/footer.php";?>

    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/@fancyapps/fancybox/jquery.fancybox.min.js"></script>
    <script src="js/front.js"></script>
    </div>
  </body>
</html>