<?php

require_once 'DatabaseUtilities.php';
require_once 'Line3Dao.php';
require_once 'Line3.php';

class Line3DaoImpl implements Line3Dao{

    public function getAmount($src_id,$dest_id){

        $amount = "";
        $conn = DatabaseUtilities::getConnection();

        if($src_id<$dest_id)
        {
            $sql = "select count(station_id) from line3 where station_id > ".$src_id." and station_id<= ".$dest_id;
            $statement = mysqli_query($conn,$sql);
echo $sql;
            while ($row = mysqli_fetch_array($statement))
            {
                $count = $row['count(station_id)'];
            }
        }
        else{
          $sql = "select count(station_id) from line3 where station_id < ".$src_id." and station_id>= ".$dest_id;
echo $sql;
            //$sql = "select count(station_id) from line3 where station_id > (select seq from line3 where station_id= $src_id) and station_id<=(select seq from line3 where station_id=$dest_id)";
            $statement = mysqli_query($conn,$sql);

            while ($row = mysqli_fetch_array($statement))
            {
                    $count = $row['count(station_id)'];
            }

        }

        $statement->close();
        $conn->close();
echo var_dump($count);
        return $count;

    }

    public function calAmt($srcLineId,$destLineId)
    {
        if($srcLineId=='3' && $destLineId=='3')
        {
           $amtDao = new Line3DaoImpl();
           $amt = $amtDao->getAmount($_POST['source_id'],$_POST['dest_id']);
           $amt = $amt * 5;
           $_POST['result'] = $amt;
           echo var_dump($amt);

        }


    }
}
?>
