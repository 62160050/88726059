<html lang="en">
<head>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <title>ค้นหาเพลง</title>
</head>
<body>
    <div class="a1">
        <h2>ค้นหาเพลง</h2>
        <input type="text" id="pp">
        
        <select id="bb">
            <option value='0'>ปีที่ออกอัลบั้ม</option>
        <?php
        // connect database 

        $connect = mysqli_connect("localhost", "root", "", "song"); 
        
    
            
        $sql = " SELECT * FROM album";
            
        $result = mysqli_query($connect, $sql);

        while($row = $result->fetch_object())
        {
             echo "<option value='$row->AlbumID'>$row->ReleaseYear</option>";
        }

    ?>
        </select>
        <button onclick="search()" class="btn btn1">ค้นหา</button>
        <div id="disp"></div>
    </div>
<script>
    
    function nl2br(str,is_xhtml){
    var breakTag = (is_xhtml || typeof is_xhtml == 'undefined') ? '<br />' : '<br>';
    return (str + '').replace(/([^>\r\n]?)(\r\n|\n\r|\r|\n)/g,'$1' + breakTag + '$2');
}
    function search(){
        var pp = document.getElementById('pp').value;
        var bb = document.getElementById('bb').value;
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                arr = JSON.parse(this.responseText);
                if(arr.lenght == 0){
                    html = `<h4>Not Found</h4>`;
                }else{
                    html = "";
                    for (i = 0; i < arr.length; i++) {
                        html += `
                                <div class="card">
                                    <div class="card-body">
                                    <h4 class="card-title">เพลง ${arr[i].MusicName}</h4>
                                    <h4 class="card-title">อัลบั้ม ${arr[i].AlbumName}</h4>
                                    <h4 class="card-title">ศิลปิน ${arr[i].BandName}</h4>
                                    <p class="card-text">${nl2br(arr[i].Lyrics)}</p>
                                    </div>
                                </div>`;
                    }
                    document.getElementById('disp').innerHTML = html;
                }
            }
        };
        var parameters = "pp=" + pp + "&bb=" + bb;
        xmlhttp.open("post", "search_post.php");
        xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xmlhttp.send(parameters);
    }
</script>
</body>
</html>




