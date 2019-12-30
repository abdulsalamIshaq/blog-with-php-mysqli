<?php
include "conn.php";

function fetch_for_index(){
    global $conn;

    $sql = mysqli_query($conn, "SELECT post.*, category.* FROM post JOIN category ON category.catID = post.catID ORDER BY post.postID DESC");
    if(mysqli_num_rows($sql) > 0){
        while($row = mysqli_fetch_assoc($sql)){
            echo "<div class='post col-xl-6'>
            <div class='post-thumbnail'>";?>
              <a href='post/<?php echo $row['postID']; ?>/<?php echo strtolower(str_replace(' ', '-', trim($row['postTitle'])))."/";?>'>
                <?php echo 
                  "<div class='blog-imade-wrapp' style='max-height:239px; overflow: hidden;'>
                      <img src='img/".$row['postImg']."' alt='".$row['postTitle']."' height='340px' class='img-thumbnail'>
                    </div>
                  </a>
                </div>
                <div class='post-details'>
                  <div class='post-meta d-flex justify-content-between'>
                    <div class='date meta-last'>".date('jS M Y H:i', strtotime($row['postDate']))."</div>
                    <div class='category'><a href='category/".strtolower($row['catID'])."/".$row['catTitle']."'>".$row['catTitle']."</a></div>
                  </div>";?>              
              <a href='post/<?php echo $row['postID']; ?>/<?php echo strtolower(str_replace(' ', '-', trim($row['postTitle'])))."/";?>'>
                  <?php echo"<h3 class='h4'>".$row['postTitle']."</h3>
    
              </a>
                  <p class='text-muted'>".substr($row['postCont'],0,100).".....</p>
              <!--<footer class='post-footer d-flex align-items-center'><a href='.' class='author d-flex align-items-center flex-wrap'>
                  
              </footer>-->
            </div>
          </div>";
        }
    }
}

function fetch_for_read_more(){
    global $conn;
    $id = $_GET['id'];

    $sql = mysqli_query($conn, "SELECT post.*, category.* FROM post JOIN category ON category.catID = post.catID WHERE post.postID = '$id'");
    if(mysqli_num_rows($sql) > 0){
        while($row = mysqli_fetch_assoc($sql)){
            echo "<div class='container'>
            <div class='post-single'>
            <h1>".$row['postTitle']."<!--<i class='fa fa-bookmark-o'></i>--></h1><br>

              <div class='post-thumbnail'><img src='img/".$row['postImg']."' alt='...' height='' class='img-thumbnail'></div>
              <div class='post-details'>
                <div class='post-meta d-flex'>
                  <div class='date'><i class='icon-clock'></i>".date('jS M Y H:i', strtotime($row['postDate']))."</div>
                  <div class='category'><i class='icon-comment'></i> <a href='category/".strtolower($row['catID'])."/".$row['catTitle']."'>".$row['catTitle']."</a></div>
                </div>
                <!-- <div class='post-footer d-flex align-items-center flex-column flex-sm-row'>
                <a href='#' class='author d-flex align-items-center flex-wrap'>
                    <div class='avatar'><img src='img/avatar-1.jpg' alt='...' class='img-fluid'></div>
                    <div class='title'><span>John Doe</span></div></a>
                  <div class='d-flex align-items-center flex-wrap'>       
                    <div class='date'><i class='icon-clock'></i> 2 months ago</div>
                    <div class='views'><i class='icon-eye'></i> 500</div>
                    <div class='comments meta-last'><i class='icon-comment'></i>12</div>
                  </div>
                </div>-->
                <div class='post-body'>
                  <p class='lead text-justify'>".$row['postCont']."</p>
                  <!--<p> <img src='img/featured-pic-3.jpeg' alt='...' class='img-fluid'></p>
                  <h3>Lorem Ipsum Dolor</h3>
                  <p>div Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda temporibus iusto voluptates deleniti similique rerum ducimus sint ex odio saepe. Sapiente quae pariatur ratione quis perspiciatis deleniti accusantium</p>
                  <blockquote class='blockquote'>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>
                    <footer class='blockquote-footer'>Someone famous in
                      <cite title='Source Title'>Source Title</cite>
                    </footer>
                  </blockquote>
                  <p>quasi nam. Libero dicta eum recusandae, commodi, ad, autem at ea iusto numquam veritatis, officiis. Accusantium optio minus, voluptatem? Quia reprehenderit, veniam quibusdam provident, fugit iusto ullam voluptas neque soluta adipisci ad.</p>-->
                </div>
                <div class='post-tags'><a href='#' class='tag'>Business</a><a href='#' class='tag'>Tricks</a><a href='#' class='tag'>Financial</a><a href='#' class='tag'>Economy</a></div>
                <div class='posts-nav d-flex justify-content-between align-items-stretch flex-column flex-md-row'><a href='#' class='prev-post text-left d-flex align-items-center'>
                    <div class='icon prev'><i class='fa fa-angle-left'></i></div>
                    <div class='text'>
                      
                    </div></a>
                    </div>
                    </div>
";
    
        }
    }
}

function fetch_for_category(){
  global $conn;
  $id = $_GET['id'];
              $query = mysqli_query($conn, "SELECT post.*, category.* FROM post 
                                JOIN category ON category.catID = post.catID 
                                WHERE category.catID = '$id' ORDER BY post.postID DESC");
                               
                if(mysqli_num_rows($query)>0){
                    while($row = mysqli_fetch_assoc($query)){?>

        <!-- Post        -->
        
        <div class="row d-flex align-items-stretch">
          <div class="image col-lg-5" style="min-height: 344px;"><img src="img/<?php echo $row['postImg'];?>" alt="..."></div><br>
          <div class="text col-lg-7">
            <div class="text-inner d-flex align-items-center">
              <div class="content">
                <header class="post-header">
                 <!-- <div class="category"><a href="#">Business</a><a href="#">Technology</a></div>-->
                 <a href="post/<?php echo $row['postID']; ?>/<?php echo strtolower(str_replace(' ', '-', trim($row['postTitle'])))."/"; ?>">
                    <h2 class="h4"><?php echo $row['postTitle'];?></h2>
                </header>
                <p><?php echo substr($row['postCont'],0,170)." .....";?></p></a>
                <footer class="post-footer d-flex align-items-center"><a href="#" class="author d-flex align-items-center flex-wrap">
                    <!--<div class="avatar"><img src="img/avatar-2.jpg" alt="..." class="img-fluid"></div>-->
                    <div class="title"><span><i class="icon-comment"></i><?php echo $row['catTitle'];?></span></div></a>
                  <div class="date"><i class="icon-clock"></i><?php echo date('jS M Y H:i', strtotime($row['postDate']));?></div>
                 <!-- <div class="comments"><i class="icon-comment"></i>12</div>-->
                </footer>
              </div>
            </div>
          </div>
        </div><br>
        <!-- Post                            -->
                 <?php   }
                }
              
}


?>