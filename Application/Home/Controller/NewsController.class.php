<?php
namespace Home\Controller;
use Think\Controller;
class NewsController extends BaseController {

    public function index(){
        // For search box
        $dblist = M('category_'.$this->lang)->order('`position` ASC, `id` DESC')->select();
        $catelist = array();
        foreach ($dblist as $item) {
            $catelist[$item['id']] = $item['name'];
        }
        $this->assign('catelist', $catelist);
        $this->assign('categories', $dblist);
        // For hot recomm projects
        $hot = M('project')->where(array('hot_recomm'=>'on', 'visible'=>'on'))->select();
        foreach ($hot as &$proj) {
            $proj['price'] = number_format ($proj['price'], 0);
            $proj['profit'] = number_format ($proj['profit'], 0);
        }
        $this->assign('hot', $hot);
        // For ads
        $adlist = M('ads_'.$this->lang)->select();
        $this->assign('adlist', $adlist);
        // All news
        $listRows = 10;
        $page = I('request.p',1);
        $total_pages = (int) ((M('news_'.$this->lang)->where(array('status'=>1))->count()-1) / $listRows) + 1;
        $news = M('news_'.$this->lang)->where(array('status'=>1))->order("`order` ASC, `date` DESC, `id` DESC")->limit((($page-1)*$listRows).",".$listRows)->select();
        $this->assign('news', $news);
        $this->assign('page', $page);
        $this->assign('total_pages', $total_pages);

        parent::language();

        $this->display();
    }
}