<?php
namespace Home\Controller;
use Think\Controller;
class NewsController extends BaseController {

    public function index(){
        // For search box
        $dblist = M('category_'.$this->lang)->select();
        $catelist = array();
        foreach ($dblist as $item) {
            $catelist[$item['id']] = $item['name'];
        }
        $this->assign('catelist', $catelist);
        $this->assign('categories', $dblist);
        // All news
        $listRows = 6;
        $page = I('request.p',1);
        $total_pages = (int) ((M('news_'.$this->lang)->where(array('status'=>1))->count()-1) / $listRows) + 1;
        $news = M('news_'.$this->lang)->where(array('status'=>1))->limit((($page-1)*$listRows).",".$listRows)->select();
        $this->assign('news', $news);
        $this->assign('page', $page);
        $this->assign('total_pages', $total_pages);

        parent::language();

        $this->display();
    }
}