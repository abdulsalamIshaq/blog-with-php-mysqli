<aside class="col-lg-4">
          <!-- Widget [Search Bar Widget]-->
          <div class="widget search">
            <header>
              <h3 class="h6">Search the blog</h3>
            </header>
            <form action="search.php" method="post" class="search-form">
              <div class="form-group">
                <input type="search" name="q" placeholder="What are you looking for?">
                <button type="submit" name="search" class="submit" required><i class="icon-search"></i></button>
              </div>
            </form>
          </div>
          <!-- Widget [Latest Posts Widget]        -->
          <div class='widget latest-posts'>
              <h3 class='h6'>Latest Posts</h3>
            </header>
             <div class='blog-posts'>
                <div class='item d-flex align-items-center'>
          <?php $sql = mysqli_query($conn, "SELECT post.*, category.* FROM post join category on category.catID = post.catID LIMIT 3 ");
          if(mysqli_num_rows($sql)>0){
                 while($row = mysqli_fetch_assoc($sql)){ ?>
           
           <div class="item d-flex align-items-center">
                  <div class="image">              
                    <a href='post/<?php echo $row['postID']; ?>/<?php echo strtolower(str_replace(' ', '-', trim($row['postTitle'])))."/";?>'>
                  <img src="img/<?php echo $row['postImg'];?>" alt="..." class="img-fluid"></div>
                  <div class="title"><strong><?php echo $row['postTitle'];?></strong>
                    <div class="d-flex align-items-center"></a>
                     <!-- <div class="views"><i class="icon-eye"></i> 500</div>-->
                      <div class="comments"><i class="icon-comment"></i><?php echo $row['catTitle'];?></div>
                    </div>
                  </div>
                </div>
                 </div>
                  
                <?php }}?>
        
          <!-- Widget [Categories Widget]-->
          <div class="widget categories">
            <header>
              <h3 class="h6">Categories</h3>
            </header>
            <?php $query = mysqli_query($conn, "SELECT * FROM category"); 
                  if(mysqli_num_rows($query) > 0){
                    while($row = mysqli_fetch_assoc($query)){
            ?>

            <div class="item d-flex justify-content-between"><a href="category.php?id=<?php echo $row['catID'];?>"><?php echo $row['catTitle'];?></a><span></span></div>
                    <?php }} ?>
          </div>
          <!-- Widget [Tags Cloud Widget]-->
          <div class="widget tags">       
            <header>
              <h3 class="h6">Tags</h3>
            </header>
            <ul class="list-inline">
              <li class="list-inline-item"><a href="#" class="tag">#Business</a></li>
              <li class="list-inline-item"><a href="#" class="tag">#Technology</a></li>
              <li class="list-inline-item"><a href="#" class="tag">#Fashion</a></li>
              <li class="list-inline-item"><a href="#" class="tag">#Sports</a></li>
              <li class="list-inline-item"><a href="#" class="tag">#Economy</a></li>
            </ul>
          </div>
        </aside>