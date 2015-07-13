<?php
namespace Home\Controller;
use Think\Controller;
class NewsController extends BaseController {

    public function index(){
        // For search box
        $dblist = M('category')->select();
        $catelist = array();
        foreach ($dblist as $item) {
            $catelist[$item['id']] = $item['name'];
        }
        $this->assign('catelist', $catelist);
        $this->assign('categories', $dblist);
        // All news
        $news = M('news')->where(array('status'=>1))->select();
        $this->assign('news', $news);

        parent::language();

        $this->display();
    }
}