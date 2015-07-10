<?php
namespace Home\Controller;
use Think\Controller;
class PageController extends BaseController {

    protected function common(){
        // For search box
        $dblist = M('category')->select();
        $catelist = array();
        foreach ($dblist as $item) {
            $catelist[$item['id']] = $item['name'];
        }
        $this->assign('catelist', $catelist);
        $this->assign('categories', $dblist);
        // For hot recomm projects
        $hot = M('project')->where(array('hot_recomm'=>'on', 'visible'=>'on'))->select();
        $this->assign('hot', $hot);
        // For ads
        $ads_1 = M('ads')->where(array('status'=>1,'type'=>1))->select();
        $ads_2 = M('ads')->where(array('status'=>1,'type'=>2))->select();
        $this->assign('ads_1', $ads_1);
        $this->assign('ads_2', $ads_2);
        // language
        $lang = I('get.lang', 'zh');
        $this->assign ('lang', $lang);
    }

    public function index(){
        $this->common();
        $this->display();
    }

    public function about(){
        $this->common();
        // Retrieve page contents
        $page = M('page')->where(array('title'=>'公司簡介'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

    public function buyers(){
        $this->common();
        // Retrieve page contents
        $page = M('page')->where(array('title'=>'買家收購程序'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }
}