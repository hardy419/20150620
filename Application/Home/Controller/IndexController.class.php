<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends BaseController {
    public function index(){
        // For search box
        $dblist = M('category')->select();
        $catelist = array();
        foreach ($dblist as $item) {
            $catelist[$item['id']] = $item['name'];
        }
        $this->assign('catelist', $catelist);
        $this->assign('categories', $dblist);
        // language
        $lang = I('get.lang', 'zh');
        $this->assign ('lang', $lang);
        $this->display();
    }

    public function AjaxSearch() {
        $type = I('get.type', 'project');
        $order = I('request.o',null);
        $sort = I('request.s','DESC');
        $keyword = I('request.keyword',null);
        $page = I('request.p',1);

        $map_recomm = I('post.recomm',null);
        $map_smallbusiness = I('post.small_business',null);
        $map_1stchoice = I('post.first_choice',null);
        $map_invest = I('post.extra_19',null);
        $map_profit = I('post.extra_5',null);
        $map_participate = I('post.checkbox_participate',null);
        $map_recovery = I('post.extra_16',null);
        $map_square = I('post.extra_7',null);
        $map_rent = I('post.extra_6',null);
        $map_location = I('post.checkbox_location',null);
        $map_metro = I('post.checkbox_metro',null);
        $map_checkbox = I('post.checkbox',null);

        $dblist = M('category')->select();
        $catelist = array();
        foreach ($dblist as $item) {
            $catelist[$item['id']] = $item['name'];
            $catelist_t[$item['id']] = $item['t'];
        }

        $model=D($type);

        $map = array();

        if (null === $order || '' == $order) {
            $order = $model->getPK();
        }
        if (null === $sort || '' == $sort) {
            $sort = 'DESC';
        }
        if (null === $page || '' == $page) {
            $page = 1;
        }

        // Filtering
        if (null !== $map_recomm) {
            $map['estate_recomm'] = 'on';
        }
        if (null !== $map_smallbusiness) {
            $map['small_business'] = 'on';
        }
        if (null !== $map_1stchoice) {
            $map['first_choice'] = 'on';
        }
        if (null !== $map_participate) {
            $map['c_participation'] = array('in', $map_participate);
        }
        if (null !== $map_location) {
            $map['c_location'] = array('in', $map_location);
        }
        if (null !== $map_metro) {
            $map['c_metro'] = array('in', $map_metro);
        }

        if (null !== $map_invest) {
        /*
            $map['investment'] = array ();
            if (in_array ('48', $map_invest)) {
                $map['investment'][] = array ('between','0,100000');
            }
            if (in_array ('49', $map_invest)) {
                $map['investment'][] = array ('between','100001,300000');
            }
            if (in_array ('50', $map_invest)) {
                $map['investment'][] = array ('between','300001,500000');
            }
            if (in_array ('51', $map_invest)) {
                $map['investment'][] = array ('between','500001,800000');
            }
            if (in_array ('52', $map_invest)) {
                $map['investment'][] = array ('between','800001,1500000');
            }
            if (in_array ('149', $map_invest)) {
                $map['investment'][] = array ('between','1500001,2500000');
            }
            if (in_array ('150', $map_invest)) {
                $map['investment'][] = array ('gt',2500000);
            }
            $map['investment'][] = 'or';
            */
            $inarray = array();
            if (in_array ('48', $map_invest)) {
                $inarray[] = 'HK$100,000或以下';
            }
            if (in_array ('49', $map_invest)) {
                $inarray[] = 'HK$100,001-300,000';
            }
            if (in_array ('50', $map_invest)) {
                $inarray[] = 'HK$300,001-500,000';
            }
            if (in_array ('51', $map_invest)) {
                $inarray[] = 'HK$500,001-800,000';
            }
            if (in_array ('52', $map_invest)) {
                $inarray[] = 'HK$800,001-1,500,000';
            }
            if (in_array ('149', $map_invest)) {
                $inarray[] = 'HK$1,500,001-2,500,000';
            }
            if (in_array ('150', $map_invest)) {
                $inarray[] = 'HK$2,500,000以上';
            }
            $map['investment'] = array('in', $inarray);
        }

        if (null !== $map_profit) {
            $map['profit'] = array ();
            if (in_array ('0-10000', $map_profit)) {
                $map['profit'][] = array ('between','0,10000');
            }
            if (in_array ('10001-20000', $map_profit)) {
                $map['profit'][] = array ('between','10001,20000');
            }
            if (in_array ('20001-30000', $map_profit)) {
                $map['profit'][] = array ('between','20001,30000');
            }
            if (in_array ('30001-40000', $map_profit)) {
                $map['profit'][] = array ('between','30001,40000');
            }
            if (in_array ('40001-50000', $map_profit)) {
                $map['profit'][] = array ('between','40001,50000');
            }
            if (in_array ('50001-99999999', $map_profit)) {
                $map['profit'][] = array ('gt',50000);
            }
            $map['profit'][] = 'or';
        }

        if (null !== $map_recovery) {
            $map['recovery_period'] = array ();
            if (in_array ('0-6', $map_recovery)) {
                $map['recovery_period'][] = array ('between','0,6');
            }
            if (in_array ('6.1-12', $map_recovery)) {
                $map['recovery_period'][] = array ('between','7,12');
            }
            if (in_array ('12.1-24', $map_recovery)) {
                $map['recovery_period'][] = array ('between','13,24');
            }
            if (in_array ('24.1-9999999', $map_recovery)) {
                $map['recovery_period'][] = array ('gt',24);
            }
            $map['recovery_period'][] = 'or';
        }

        if (null !== $map_square) {
            $map['square'] = array ();
            if (in_array ('0-200', $map_square)) {
                $map['square'][] = array ('between','0,200');
            }
            if (in_array ('201-500', $map_square)) {
                $map['square'][] = array ('between','201,500');
            }
            if (in_array ('501-800', $map_square)) {
                $map['square'][] = array ('between','501,800');
            }
            if (in_array ('801-1200', $map_square)) {
                $map['square'][] = array ('between','801,1200');
            }
            if (in_array ('1201-2000', $map_square)) {
                $map['square'][] = array ('between','1201,2000');
            }
            if (in_array ('2001-99999999', $map_square)) {
                $map['square'][] = array ('gt',2000);
            }
            $map['square'][] = 'or';
        }

        if (null !== $map_rent) {
            $map['rent'] = array ();
            if (in_array ('0-10000', $map_rent)) {
                $map['rent'][] = array ('between','0,10000');
            }
            if (in_array ('10001-30000', $map_rent)) {
                $map['rent'][] = array ('between','10001,30000');
            }
            if (in_array ('30001-50000', $map_rent)) {
                $map['rent'][] = array ('between','30001,50000');
            }
            if (in_array ('50001-80000', $map_rent)) {
                $map['rent'][] = array ('between','50001,80000');
            }
            if (in_array ('80001-100000', $map_rent)) {
                $map['rent'][] = array ('between','80001,100000');
            }
            if (in_array ('100001-99999999', $map_rent)) {
                $map['rent'][] = array ('gt',100000);
            }
            $map['rent'][] = 'or';
        }

        if (null !== $map_checkbox) {
            $c_field1 = array();
            $c_field2 = array();
            $c_area1 = array();
            foreach ($map_checkbox as $key=>$vals) {
                if('地區' != $catelist_t[$key]) {
                    $c_field1 = array_merge ($c_field1, $vals[1]);
                    $c_field2 = array_merge ($c_field2, $vals[2]);
                }
                else {
                    $c_area1 = array_merge ($c_area1, $vals);
                }
            }
            if (count($c_field1) > 0) {
                $map['c_field1'] = array ('in', $c_field1);
            }
            if (count($c_field2) > 0) {
                $map['c_field2'] = array ('in', $c_field2);
            }
            if (count($c_area1) > 0) {
                $map['c_area1'] = array ('in', $c_area1);
            }
        }

        if (null !== $keyword && !empty($keyword)) {
            $map['title'] = array ('like', "%{$keyword}%");
        }

        $map['_logic'] = 'or';
        // Filtering END

        $count = $model->where($map)->count();

        $results = array ();

        if ($count>0) {
            $pageNum=I('request.nr','');
            $listRows=!empty($pageNum)?$pageNum:12;

            $results['data'] = $model->where($map)->order("`" . $order . "` " . $sort)->limit((($page-1)*$listRows).",".$listRows)->select();

            // Special processes
            foreach ($results['data'] as &$data) {
                $data['field'] = $catelist[$data['c_field']];
                $data['participation'] = $catelist[$data['c_participation']];
                $data['situation'] = $catelist[$data['c_situation']];
            }

            $results['numpages'] = (int)($count/$listRows)+1;
        }
        else {
        }

        $results['msg'] = 'Success';

        $results['p'] = $page;

        $results['sql'] = $model->getLastSql();

        echo json_encode($results);
    }

    // SQL execution 
    /*public function sql() {
        $q = "INSERT INTO `gc_userb` (`id`, `user`, `pass`, `created`, `current`, `last`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2012-10-10 00:22:02', '2014-12-22 15:28:41', '2014-11-23 15:32:38');
";
        $results = M()->query($q);
        //$this->response->setOutput("<h2>{$q}</h2>".var_export($results,1));
        if(false !== $results) {
            $this->success("{$q} Success",'index.php',5);
        }
        else {
            $this->error("{$q} Failure",'index.php',5);
        }
    }*/
}