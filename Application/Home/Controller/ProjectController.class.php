<?php
namespace Home\Controller;
use Think\Controller;
class ProjectController extends BaseController {

    public function index(){
        // For search box
        $dblist = M('category')->select();
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
        $project = M('project')->where(array('id'=>$id))->select();
        $this->assign ('project', $project[0]);
        $certificates = explode (',', $project[0]['c_certificate']);
        $this->assign ('certificates', $certificates);

        $dblist = M('category')->select();
        $catelist = array();
        foreach ($dblist as $item) {
            $catelist[$item['id']] = $item['name'];
        }
        $this->assign('catelist', $catelist);
        // For hot recomm projects
        $hot = M('project')->where(array('hot_recomm'=>'on', 'visible'=>'on'))->select();
        $this->assign('hot', $hot);
        // For ads
        $ads_1 = M('ads')->where(array('status'=>1,'type'=>1))->select();
        $ads_2 = M('ads')->where(array('status'=>1,'type'=>2))->select();
        $this->assign('ads_1', $ads_1);
        $this->assign('ads_2', $ads_2);

        parent::language();

        $this->display();
    }
}