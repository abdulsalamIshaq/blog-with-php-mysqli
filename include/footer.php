<footer class="main-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <div class="logo">
              <h6 class="text-white">Site Logo</h6>
            </div>
            <div class="contact-details">
              <p>02 Prince Road, Kabala West, Nigeria</p>
              <p>Phone: +(234) 812 055 3286</p>
              <p>Email: <a href="mailto:info@company.com">Info@Company.com</a></p>
              <ul class="social-menu">
                <li class="list-inline-item"><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li class="list-inline-item"><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li class="list-inline-item"><a href="#"><i class="fa fa-instagram"></i></a></li>
                <li class="list-inline-item"><a href="#"><i class="fa fa-behance"></i></a></li>
                <li class="list-inline-item"><a href="#"><i class="fa fa-pinterest"></i></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-4">
            <div class="menus d-flex">
              <ul class="list-unstyled">
                <li> <a href="#">My Account</a></li>
                <li> <a href="#">Add Listing</a></li>
                <li> <a href="#">Pricing</a></li>
                <li> <a href="#">Privacy &amp; Policy</a></li>
              </ul>
              <ul class="list-unstyled">
                <li> <a href="#">Our Partners</a></li>
                <li> <a href="#">FAQ</a></li>
                <li> <a href="#">How It Works</a></li>
                <li> <a href="#">Contact</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-4">
            <div class="latest-posts">
            <?php $sql = mysqli_query($conn,
                        "SELECT post.*, category.* FROM post JOIN category ON category.catID = post.catID ORDER BY post.postID DESC Limit 3"); 
                        if(mysqli_num_rows($sql)>0){
                            while($row = mysqli_fetch_assoc($sql)){?>
            <a href="post/<?php echo $row['postID']; ?>/<?php echo strtolower(str_replace(' ', '-', trim($row['postTitle'])))."/"; ?>">
                <div class="post d-flex align-items-center">
                  <div class="image"><img src="img/<?php echo $row['postImg'];?>" alt="..." class="img-fluid"></div>
                  <div class="title"><strong><?php echo substr($row['postTitle'],0,30)." ....";?></strong>
                  <span class="date last-meta"><?php echo date('jS M Y H:i', strtotime($row['postDate']));?> 
                  </span></div>
                  
                  </div></a>
                  <?php 
                  }
                } 
                ?>
            </div>
          </div>
        </div>
      </div>
      <div class="copyrights">
        <div class="container">
          <div class="row">
            <div class="col-md-6">
              <p>&copy; <?php echo date("Y");?>. All rights reserved.</p>
            </div>
            <div class="col-md-6 text-right">
              <p>By <a href="#" class="text-white">Abdulsalam Ishaq.</a>
                <!-- Please do not remove the backlink to Bootstrap Temple unless you purchase an attribution-free license @ Bootstrap Temple or support us at http://bootstrapious.com/donate. It is part of the license conditions. Thanks for understanding :)                         -->
              </p>
            </div>
          </div>
        </div>
      </div>
    </footer>