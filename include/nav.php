<nav class='navbar navbar-expand-lg'>
  <div class='search-area'>
    <div class='search-area-inner d-flex align-items-center justify-content-center'>
      <div class='close-btn'><i class='icon-close'></i></div>
      <div class='row d-flex justify-content-center'>
        <div class='col-md-8'>
        <form action="search.php" method="post" class="search-form">
            <div class='form-group'>
            <input type="search" name="q" placeholder="What are you looking for?">
              <button type="submit" name="search" class="submit" required><i class="icon-search"></i></button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class='container'>
    <!-- Navbar Brand -->
    <div class='navbar-header d-flex align-items-center justify-content-between'>
      <!-- Navbar Brand --><a href='./' class='navbar-brand'>9jareport</a>
      <!-- Toggle Button-->
      <button type='button' data-toggle='collapse' data-target='#navbarcollapse' aria-controls='navbarcollapse' aria-expanded='false' aria-label='Toggle navigation' class='navbar-toggler'>
      <span></span><span></span><span></span></button>
    </div>
        <!-- Navbar Menu -->
<div id='navbarcollapse' class='collapse navbar-collapse'>
      <ul class='navbar-nav ml-auto'>
        <li class='nav-item'><a href='./' class='nav-link'>Home</a>
        </li>
        <?php $stmt = mysqli_query($conn, "SELECT * FROM category");
        if(mysqli_num_rows($stmt)>0){
          while($row = mysqli_fetch_assoc($stmt)){ ?>
        <li class='nav-item'><a href='category/<?php echo $row['catID']."/";?><?php echo strtolower($row['catTitle']);?>' class='nav-link'><?php echo $row['catTitle'];?></a>
          </li><?php }} ?>
        <li class='nav-item'><a href='#' class='nav-link'>Contact</a>
        </li>
      </ul>
      <div class='navbar-text'><a href='#' class='search-btn'><i class='icon-search-1'></i></a></div>
      
    </div>
  </div>
</nav>