<?php
   // config for connect database 
   $connect = mysqli_connect("localhost", "root", "", "song"); 

function fill_music($connect){
    if (isset($_POST['pp'])) {
        $pp = $_POST['pp'];
    } else {
        $pp = '';
    }
    if (isset($_POST['bb'])) {
        $bb = $_POST['bb'];
    } else {
        $bb = '';
    }

    if($bb !=0){
        $sql = "SELECT music.MusicName,music.Lyrics, artist.BandName, album.AlbumName,album.ReleaseYear
        FROM ((music
        INNER JOIN artist ON music.BandID = artist.BandID)
        INNER JOIN album ON music.AlbumID = album.AlbumID)
        WHERE album.AlbumID LIKE '%$bb%'";
    }else{
        $sql = "SELECT music.MusicName,music.Lyrics, artist.BandName, album.AlbumName,album.ReleaseYear
        FROM ((music
        INNER JOIN artist ON music.BandID = artist.BandID)
        INNER JOIN album ON music.AlbumID = album.AlbumID)
        WHERE MusicName LIKE '%$pp%' or artist.BandName LIKE '%$pp%'";
    }

    $result = mysqli_query($connect, $sql);

    $arr = array();

    while($row = $result->fetch_object())
    {
         $arr[] = $row;
    }
    echo json_encode($arr,JSON_UNESCAPED_UNICODE);
}
    echo fill_music($connect);
?>    




