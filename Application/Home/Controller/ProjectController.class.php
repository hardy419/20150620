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

        parent::language();

        $this->display('projects');
    }

    public function project_detail(){
        $id = I('request.id', null);
        if (empty($id) || null == $id) {
            $this->error('');
        }
        $project = M('project_'.$this->lang)->where(array('id'=>$id))->select();
        $project[0]['price'] = number_format ($project[0]['price'], 0);
        $project[0]['turnover'] = number_format ($project[0]['turnover'], 0);
        $project[0]['profit'] = number_format ($project[0]['profit'], 0);
        $project[0]['recovery_period'] = str_replace ('.0', '', number_format ($project[0]['recovery_period'], 1));
        $project[0]['rent'] = number_format ($project[0]['rent'], 0);
        $project[0]['downpay'] = number_format ($project[0]['downpay'], 0);
        $project[0]['allowance'] = number_format ($project[0]['allowance'], 0);
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
        // For hot recomm projects
        $hot = M('project_'.$this->lang)->where(array('hot_recomm'=>'on', 'visible'=>'on'))->select();
        foreach ($hot as &$proj) {
            $proj['price'] = number_format ($proj['price'], 0);
            $proj['profit'] = number_format ($proj['profit'], 0);
        }
        $this->assign('hot', $hot);
        // For ads
        $adlist = M('ads_'.$this->lang)->select();
        $this->assign('adlist', $adlist);

        parent::language();

        $this->display();
    }
}