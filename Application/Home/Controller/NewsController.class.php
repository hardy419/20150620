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
        // For hot recomm projects
        $hot = M('project_'.$this->lang)->where(array('hot_recomm'=>'on', 'visible'=>'on'))->select();
        foreach ($hot as &$proj) {
            $proj['price'] = number_format ($proj['price'], 0);
            $proj['profit'] = number_format ($proj['profit'], 0);
        }
        $this->assign('hot', $hot);
        // For ads
        $ads_1 = M('ads_'.$this->lang)->where(array('status'=>1,'type'=>1))->select();
        $ads_2 = M('ads_'.$this->lang)->where(array('status'=>1,'type'=>2))->select();
        $this->assign('ads_1', $ads_1);
        $this->assign('ads_2', $ads_2);
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