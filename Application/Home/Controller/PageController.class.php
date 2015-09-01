<?php
namespace Home\Controller;
use Think\Controller;
class PageController extends BaseController {

    protected function common(){
        // For search box
        $dblist = M('category_'.$this->lang)->order('`position` ASC, `id` DESC')->select();
        $catelist = array();
        foreach ($dblist as $item) {
            $catelist[$item['id']] = $item['name'];
        }
        $this->assign('catelist', $catelist);
        $this->assign('categories', $dblist);
        $dblist_zh = M('category_zh')->select();    // For column 't' comparison only
        $catelist_zh = array();
        foreach ($dblist_zh as $item) {
            $catelist_zh[$item['id']] = $item['name'];
        }
        $this->assign('catelist_zh', $catelist_zh);
        // For hot recomm projects
        $hot = M('project')->where(array('hot_recomm'=>'on', 'visible'=>'on'))->select();
        foreach ($hot as &$proj) {
            $proj['price'] = number_format ($proj['price'], 0);
            $proj['profit'] = number_format ($proj['profit'], 0);
        }
        $this->assign('hot', $hot);
        // For ads
        $adlist = M('ads_'.$this->lang)->where(array('status'=>1))->select();
        $this->assign('adlist', $adlist);
        // Settings (Max Tick)
        $max_tick = M('settings')->where(array('id'=>1))->getField('value');
        $this->assign('max_tick', $max_tick);

        parent::language();

    }

    public function index(){
        $this->common();
        $this->display();
    }

//////////////////////////////////////////////////////////////////////////////
// About pages
//////////////////////////////////////////////////////////////////////////////

    public function about(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'公司簡介'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

    public function our_values(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'我們的價值觀'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

    public function services(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'服務範圍'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

//////////////////////////////////////////////////////////////////////////////
// Buyers pages
//////////////////////////////////////////////////////////////////////////////

    public function buyers(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'買家收購程序'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

    public function why_us(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'為何選擇我們'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

    public function buyers_query(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'買家查詢'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

//////////////////////////////////////////////////////////////////////////////
// Sellers pages
//////////////////////////////////////////////////////////////////////////////

    public function sellers(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'賣家出讓程序'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

    public function evaluate(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'業務估值'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

    public function sellers_why_us(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'為何選擇我們(賣家)'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

    public function sellers_query(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'賣家查詢'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

//////////////////////////////////////////////////////////////////////////////
// Notice Us pages
//////////////////////////////////////////////////////////////////////////////

    public function noticeUs1(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'創富做老闆'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

    public function noticeUs2(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'創業模式之比較'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

    public function noticeUs3(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'何謂「業務轉讓」'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

    public function noticeUs4(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'為何選擇業務轉讓'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

    public function noticeUs5(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'常見問題'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

//////////////////////////////////////////////////////////////////////////////
// Last 4 pages
//////////////////////////////////////////////////////////////////////////////

    public function noticeSale1(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'開業資料庫'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

    public function noticeSale2(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'營商資料庫'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

    public function link(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'相關連結'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

    public function contact(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'聯絡我們'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display();
    }

//////////////////////////////////////////////////////////////////////////////
// Copyright, privacy & disclaimer
//////////////////////////////////////////////////////////////////////////////

    public function copyright(){
        $this->common();
        $this->display();
    }
    public function disclaimer(){
        $this->common();
        $this->display();
    }
    public function privacy(){
        $this->common();
        $this->display();
    }

    public function join(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'創富會'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);
        $this->display();
    }
    public function join_form(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'加入創富會'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);
        $this->display();
    }
    public function recruit(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'精英招聘'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);
        $this->display();
    }
    public function cooperation(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'合作夥伴'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);
        $this->display();
    }
    public function enquiry(){
        $this->common();
        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'為您配對合適好生意'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);
        $this->display();
    }

}