<?php
namespace Home\Controller;
use Think\Controller;
class ProjectController extends BaseController {

    public function index(){
        // For search box
        $dblist = M('category_'.$this->lang)->select();
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

        parent::language();

        $this->display();
    }
}