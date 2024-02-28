<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Portfolio_Final.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Naveed Lihazi</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    
    <link rel="stylesheet" href="CSS/style.css" type ="text/css">
    <script src="script.js"></script>
    
</head>
<body>
    <form id="mainpage" runat="server">
        <header class="header">
            <a href="#" class = "logo">Portfolio.</a>
    

            <nav class="navbar">
                <a href="#home" class="active">Home</a>
                <a href="#about">About</a>
                <a href="#services">Services</a>
                <a href="#portfolio">Portfolio</a>
                <a href="#contact">Contact</a>


            </nav>
            <div class='bx bx-moon' id ="darkMode-icon">

            </div>
        </header>



        </header>

  <!--home section design-->

  <section class="home" id="home">
    <div class="home-content">
      <h3>Hello, I am</h3>
      <h1>Naveed Lihazi</h1>
      <p>Current Student of Computer Science and Engineering at
        Khulna Universilty of Engineering and technology.
        My hobby is Photography, recently started my coding journey.
      </p>
      
      <div class="social-media">
        <a href="#"><i class='bx bxl-facebook-circle' ></i></a>
        <a href="#"><i class='bx bxl-instagram' ></i></a>
        <a href="#"><i class='bx bxl-linkedin' ></i></a>
        
      </div>

    <a href="#" class="btn">Download CV</a>  

    </div>

    <div class="profession-container">
      <div class="profession-box">
        <div class="profession" style = "--i:0;">
          <i class='bx bx-code-alt' ></i>
          <h3>Web Developer</h3>
        </div>
        <div class="profession" style = "--i:1;">
          <i class='bx bx-code-curly' ></i>
          <h3>Programmer</h3>
        </div>
        <div class="profession" style = "--i:2;">
          <i class='bx bx-camera-movie' ></i>
          <h3>Photographer</h3>
        </div>
        <div class="profession" style = "--i:3;">
          <i class='bx bx-music' ></i>
          <h3>Music Lover</h3>
        </div>

        <div class="circle"></div>

      </div>

      <div class="overlay"></div>
    </div>
    <div class="home-img">
      <img src="Images/profilepic.png" alt="">
    </div>
  </section>

  <section class="about" id="about">
    <div class="about-img">
      <img src="Images/Aboutpic.jpg" alt="">

    </div>

    <div class="about-content">
      <h2 class="heading">About <span>Me</span></h2>
      <h3>Learner,Programmer,Photographer</h3>
      <p>I am a Tech Entusiasist.<br/> Love to teach other Programming.
        An eager Learner and loves to portray emotions <br>
        THROUGH THE LENS.
      </p>
      
      
    </div>
  </section>

        <!-- academics section design-->

    <section class="academics" id="academics">


        <h2 class="heading">Academic <span>Qualifications</span></h2>
        <div class="academics-container">

        <asp:Repeater ID ="repeateracademics" runat="server">
            <ItemTemplate>
                   <div class="academics-box">
                        <h3>
                            <asp:Label ID="degreenamelabel" runat="server" Text ='<%# Eval("degreename") %>'></asp:Label>
                        </h3>
                        <p>
                            <asp:Label ID ="descriptionlabel" runat="server" Text='<%# Eval("desciption")%>'></asp:Label>
                        </p>
                    </div>
            </ItemTemplate>
        </asp:Repeater>

 
        </div>

    </section>

    </form>
</body>
</html>
