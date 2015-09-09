<?php
namespace Home\Controller;
use Think\Controller;
class ProjectController extends BaseController {

    public function index(){
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
        // Settings (Max Tick)
        $max_tick = M('settings')->where(array('id'=>1))->getField('value');
        $this->assign('max_tick', $max_tick);

        parent::language();

        $this->display('projects');
    }

    public function project_detail(){
        $id = I('request.id', null);
        if (empty($id) || null == $id) {
            $this->error('');
        }
        $project = M('project')->where(array('id'=>$id))->select();
        $project[0]['price'] = number_format ($project[0]['price'], 0);
        $project[0]['turnover'] = (0 == $project[0]['turnover']) ? '-' : number_format ($project[0]['turnover'], 0);
        $project[0]['profit'] = number_format ($project[0]['profit'], 0);
        $project[0]['recovery_period'] = (0 == $project[0]['recovery_period']) ? '-' : number_format ($project[0]['recovery_period'], 1);
        $project[0]['rent'] = number_format ($project[0]['rent'], 0);
        $project[0]['downpay'] = number_format ($project[0]['downpay'], 0);
        $project[0]['allowance'] = number_format ($project[0]['allowance'], 0);
        $project[0]['square'] = number_format ($project[0]['square'], 0);
        $project[0]['c_participation'] = explode (',', $project[0]['c_participation']);
        $project[0]['c_location'] = explode (',', $project[0]['c_location']);
        $project[0]['c_transfer'] = explode (',', $project[0]['c_transfer']);
        $project[0]['c_metro'] = explode (',', $project[0]['c_metro']);
        $this->assign ('project', $project[0]);
        $certificates = explode (',', $project[0]['c_certificate']);
        $this->assign ('certificates', $certificates);

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

        $this->display();
    }
}