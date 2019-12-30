<?php include "include/function.php";?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <?php
    $sql = mysqli_query($conn, "select * from sitedetails");
    $details = mysqli_fetch_assoc($sql);
    ?>
    <title> <?php echo $details['siteTitle'];?> - <?php echo $details['siteTagline'];?></title>
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
    <link rel="shortcut icon" href="img/favicon.ico">
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
        <main class="posts-listing col-lg-8"> 
       
        <?php 
              $search = mysqli_real_escape_string($conn, $_POST['q']);
              $submit = mysqli_real_escape_string($conn, $_POST['search']);

              if(isset($_POST['search'])){
                $query = mysqli_query($conn, "SELECT post.*, category.* FROM post 
                JOIN category ON category.catID = post.catID WHERE post.postTitle LIKE '%$search%' ORDER BY postID DESC");
                $num_row = mysqli_num_rows($query);?>

                <h2><?php if($num_row == 0){ echo 0;}elseif(empty($search)){echo"0";}else{ echo $num_row;}?> Rresult Found</h2><hr> <div class='container'>
                <div class='row'>
               <? if($num_row == 0){ echo "No Searched Result Found";}
                ?>
 
            <?php  if(mysqli_num_rows($query) > 0 and !empty($_POST['q'])){
        while($row = mysqli_fetch_assoc($query)){$id = $row['postID'];
        echo "<br><div class='post col-xl-6'>
        <div class='post-thumbnail'>";?>              
          <a href='post/<?php echo $row['postID']; ?>/<?php echo strtolower(str_replace(' ', '-', trim($row['postTitle'])))."/";?>'>
          <?php echo "
          <div class='blog-imade-wrapp' style='max-height:239px; overflow: hidden;'>
            <img src='img/".$row['postImg']."' alt='".$row['postTitle']."' height='340px' class='img-fluid'></a>
            </div>
        </div>
          <div class='post-details'>
            <div class='post-meta d-flex justify-content-between'>
              <div class='date meta-last'>".date('jS M Y H:i', strtotime($row['postDate']))."</div>
              <div class='category'><a href='.'>".$row['catTitle']."</a></div>
            </div><a href='post.php?id=".$row['postID']."'>
              <h3 class='h4'>".$row['postTitle']."</h3></a>
            <p class='text-muted'>".substr($row['postCont'],0,100).".....</p>
          <footer class='post-footer d-flex align-items-center'><a href='.' class='author d-flex align-items-center flex-wrap'>
              
          </footer>
        </div>
      </div>";

    }
}else{
    echo "No result found.";
}
}?>
           
              <!-- post -->
              
              <!-- post             -->
               
            <!-- Pagination -->
            <br>
            <nav aria-label="Page navigation example"><br>
              <ul class="pagination pagination-template d-flex justify-content-center">
                <li class="page-item"><a href="#" class="page-link"> <i class="fa fa-angle-left"></i></a></li>
                <li class="page-item"><a href="#" class="page-link active">1</a></li>
                <li class="page-item"><a href="#" class="page-link">2</a></li>
                <li class="page-item"><a href="#" class="page-link">3</a></li>
                <li class="page-item"><a href="#" class="page-link"> <i class="fa fa-angle-right"></i></a></li>
              </ul>
            </nav>
          </div>
        </main>


        <?php include "include/sidebar.php";?>


    <!-- Page Footer-->
    <?php include "include/footer.php";?>
    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/@fancyapps/fancybox/jquery.fancybox.min.js"></script>
    <script src="js/front.js"></script>
  </body>
</html>