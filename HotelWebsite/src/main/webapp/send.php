<?php 

    if(isset($_POST['btn-send']))
    {
       $UserName = $_POST['UName'];
       $Email = $_POST['Email'];
       $Subject = $_POST['Subject'];
       $Msg = $_POST['msg'];

       if(empty($UserName) || empty($Email) || empty($Subject) || empty($Msg))
       {
           header('location:contact.html?error');
       }
       else
       {
           $to = "sanikadose33@gmail.com";

           if(mail($to,$Subject,$Msg,$Email))
           {
               header("location:contact.html?success");
           }
       }
    }
    else
    {
        header("location:contact.html");
    }
?>