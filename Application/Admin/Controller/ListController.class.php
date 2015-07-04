<?php
namespace Admin\Controller;
use Think\Controller;
class ListController extends BaseController{
    public function index(){
        $type=I('get.type');
        $pid=I('get.pid');
        if(!in_array($type,array('banner','catagory','page','project','projectphoto'))) $this->error('',U('Index/index'));
        $tname=$type;
        $map=array();
        if(!empty($pid)&&is_numeric($pid)){
            $map['pid']=$pid;
        }else{
            $pid=0;
        }

        $sort = 'desc';

        if('project' == $type) {
            $this->_select($tname,$map,'id',$sort,false,'SELECT a.id,a.title,a.date,b.name as catagory FROM gc_project as a LEFT JOIN gc_catagory as b ON a.cid=b.id');
        }
        else {
            $this->_select($tname,$map,'id',$sort);
        }
        $this->assign('type',$type);
        $this->assign('pid',$pid);
        $current=cookie('current');
        cookie('current',null);
        $this->assign('current',$current);
        cookie("__CURRENTURL__",__SELF__);

        if('banner' != $type && 'project' != $type) {
            $this->display();
        }
        else {
            $this->display('view'.$type);
        }
    }

    public function AjaxSearch() {
        $type = I('get.type', 'project');
        $order = I('request.o',null);
        $sort = I('request.s','DESC');
        $keyword = I('request.keyword',null);
        $page = I('request.p',1);

        $map_recomm = I('post.recomm',null);
        $map_smallbusiness = I('post.small_business',null);
        $map_1stchoice = I('post.first_choice',null);
        $map_invest = I('post.extra_19',null);
        $map_profit = I('post.extra_5',null);
        $map_participate = I('post.checkbox_participate',null);
        $map_recovery = I('post.extra_16',null);
        $map_square = I('post.extra_7',null);
        $map_rent = I('post.extra_6',null);
        $map_location = I('post.checkbox_location',null);
        $map_metro = I('post.checkbox_metro',null);
        $map_checkbox = I('post.checkbox',null);

        $dblist = M('category')->select();
        $catelist = array();
        foreach ($dblist as $item) {
            $catelist[$item['id']] = $item['name'];
        }

        $model=D($type);

        $map = array();

        if (null === $order) {
            $order = $model->getPK();
        }

        // Filtering
        if (null !== $map_recomm) {
            $map['estate_recomm'] = 'on';
        }
        if (null !== $map_smallbusiness) {
            $map['small_business'] = 'on';
        }
        if (null !== $map_1stchoice) {
            $map['first_choice'] = 'on';
        }
        if (null !== $map_participate) {
            $map['c_participation'] = array('in', $map_participate);
        }

        if (null !== $map_profit) {
            $map['profit'] = array ();
            if (in_array ('0-10000', $map_profit)) {
                $map['profit'][] = array ('between','0,10000');
            }
            if (in_array ('10001-20000', $map_profit)) {
                $map['profit'][] = array ('between','10001,20000');
            }
            if (in_array ('20001-30000', $map_profit)) {
                $map['profit'][] = array ('between','20001,30000');
            }
            if (in_array ('30001-40000', $map_profit)) {
                $map['profit'][] = array ('between','30001,40000');
            }
            if (in_array ('40001-50000', $map_profit)) {
                $map['profit'][] = array ('between','40001,50000');
            }
            if (in_array ('50001-99999999', $map_profit)) {
                $map['profit'][] = array ('gt',50000);
            }
            $map['profit'][] = 'or';
        }

        if (null !== $map_recovery) {
            $map['recovery_period'] = array ();
            if (in_array ('0-6', $map_recovery)) {
                $map['recovery_period'][] = array ('between','0,6');
            }
            if (in_array ('6.1-12', $map_recovery)) {
                $map['recovery_period'][] = array ('between','7,12');
            }
            if (in_array ('12.1-24', $map_recovery)) {
                $map['recovery_period'][] = array ('between','13,24');
            }
            if (in_array ('24.1-9999999', $map_recovery)) {
                $map['recovery_period'][] = array ('gt',24);
            }
            $map['recovery_period'][] = 'or';
        }

        if (null !== $map_square) {
            $map['square'] = array ();
            if (in_array ('0-200', $map_square)) {
                $map['square'][] = array ('between','0,200');
            }
            if (in_array ('201-500', $map_square)) {
                $map['square'][] = array ('between','201,500');
            }
            if (in_array ('501-800', $map_square)) {
                $map['square'][] = array ('between','501,800');
            }
            if (in_array ('801-1200', $map_square)) {
                $map['square'][] = array ('between','801,1200');
            }
            if (in_array ('1201-2000', $map_square)) {
                $map['square'][] = array ('between','1201,2000');
            }
            if (in_array ('2001-99999999', $map_square)) {
                $map['square'][] = array ('gt',2000);
            }
            $map['square'][] = 'or';
        }

        if (null !== $map_rent) {
            $map['rent'] = array ();
            if (in_array ('0-10000', $map_rent)) {
                $map['rent'][] = array ('between','0,10000');
            }
            if (in_array ('10001-30000', $map_rent)) {
                $map['rent'][] = array ('between','10001,30000');
            }
            if (in_array ('30001-50000', $map_rent)) {
                $map['rent'][] = array ('between','30001,50000');
            }
            if (in_array ('50001-80000', $map_rent)) {
                $map['rent'][] = array ('between','50001,80000');
            }
            if (in_array ('80001-100000', $map_rent)) {
                $map['rent'][] = array ('between','80001,100000');
            }
            if (in_array ('100001-99999999', $map_rent)) {
                $map['rent'][] = array ('gt',100000);
            }
            $map['rent'][] = 'or';
        }

        if (null !== $map_checkbox) {
            $c_field1 = array();
            $c_field2 = array();
            foreach ($map_checkbox as $key=>$vals) {
                $c_field1 = array_merge ($c_field1, $vals[1]);
                $c_field2 = array_merge ($c_field2, $vals[2]);
            }
            if (count($c_field1) > 0) {
                $map['c_field1'] = array ('in', $c_field1);
            }
            if (count($c_field2) > 0) {
                $map['c_field2'] = array ('in', $c_field2);
            }
        }

        if (null !== $keyword && !empty($keyword)) {
            $map['title'] = array ('like', "%{$keyword}%");
        }

        $map['_logic'] = 'or';
        // Filtering END

        $count = $model->where($map)->count();

        $results = array ();

        if ($count>0) {
            $pageNum=C("PAGENUM");
            $listRows=!empty($pageNum)?$pageNum:12;

            $results['data'] = $model->where($map)->order("`" . $order . "` " . $sort)->limit((($page-1)*$listRows).",".$listRows)->select();

            // Special processes
            foreach ($results['data'] as &$data) {
                $data['field'] = $catelist[$data['c_field']];
            }

            $results['numpages'] = (int)($count/$listRows)+1;
        }
        else {
        }

        $results['msg'] = 'Success';

        $results['p'] = $page;

        echo json_encode($results);
    }

    public function admin() {
        $type=I('get.type', 'user');
        $pid=I('get.pid', null);
        $id=I('get.id', null);
        if(!in_array($type,array('user', 'banner','page','category','project'))) $this->error('',U('Index/index'));
        $tname=$type;

        // Sort
        $order = I('post.o','id');
        $sort = I('post.s','DESC');
        $this->assign ('order', $order);
        $this->assign ('sort', $sort);

        // Special variables & filters
        if ('category' == $type) {
            $ti = I('get.ti', 1);
            switch ($ti) {
                case 1:
                    $cur_t = '地區';
                    break;
                case 2:
                    $cur_t = '行業';
                    break;
                case 3:
                    $cur_t = '牌照';
                    break;
                case 4:
                    $cur_t = '東主參與程度';
                    break;
                case 5:
                    $cur_t = '經營場所類別';
                    break;
                case 6:
                    $cur_t = '轉讓形式';
                    break;
                case 7:
                    $cur_t = '地鐵沿線';
                    break;
                case 8:
                    $cur_t = '項目現況';
                    break;
            }
            
            if (null !== $pid) {
                $pname = M('category')->where(array('id'=>$pid))->getField('name');
                $cur_t = $pname;
                $map = array ('t'=>$pname);
                $this->assign ('pname', $pname);
                $this->assign ('pid', $pid);
            }
            else if (1==$ti || 2==$ti) {
                $map = array ('t'=>array('in','地區,行業'));
            }
            else {
                $map = array ('t'=>$cur_t);
            }

            // Search
            $postcurt = I('post.cur_t',null);
            $keyword = I('post.keyword',null);
            if($postcurt!==null && !empty($postcurt)) {
                $cur_t = $postcurt;
                $map = array ('t'=>$cur_t);
                $this->assign ('postcurt', $postcurt);
            }
            if (null !== $keyword && !empty($keyword)) {
                $map['name|t|position'] = array ('like', "%{$keyword}%");
                $this->assign ('keyword', $keyword);
            }

            $this->assign ('ti', $ti);
            $this->assign ('cur_t', $cur_t);
        }
        else if('project' == $type) {
            // Retrieve the category list for selection
            $dblist = M('category')->select();
            $catelist = array();
            foreach ($dblist as $item) {
                $catelist[$item['id']] = $item['name'];
            }
            $this->assign('catelist', $catelist);
            $this->assign('categories', $dblist);
        }
        else {
            $map = array ();
        }

        if (null !== $id) {
            $this->_edit ($tname, $id);
            if ('page' == $type) {
                cookie("__CURRENTURL__",__SELF__);
            }
        }
        else {
            $this->_select($tname, $map, $order, $sort);
            cookie("__CURRENTURL__",__SELF__);
        }
        $this->assign('type',$type);

        $current=cookie('current');
        cookie('current',null);
        $this->assign('current',$current);

        if ('user' == $type) {
            $this->display();
        }
        else {
            $this->display($type);
        }
    }

    public function category(){
        $type=I('get.type');
        if(!in_array($type,array('newscategory','industry','forget'))) $this->error('',U('Index/index'));
        $tname=$type;
        $this->_select($tname);
        $this->assign('type',$type);
        cookie("__CURRENTURL__",__SELF__);
        $current=cookie('current');
        cookie('current',null);
        $this->assign('current',$current);
        $this->display();
    }
    public function photos(){
        $type=I('get.type');
        $pid=I('get.pid');
        $jump=cookie("__CURRENTURL__");
        if(empty($pid)||!is_numeric($pid)){
            $this->error('invalid action',$jump);
        }
        if(!in_array($type,array('projectphoto','tutorsphotos','casephotos','studentphotos'))) $this->error('',U('Index/index'));
        $tname=$type;
        $this->_select($tname,array('pid'=>$pid),'sid','desc');
        $this->assign('type',$type);
        cookie("__CURRENTURL__",__SELF__);
        cookie('current',$pid);
        $this->display();
    }

    public function edit(){
        $id=I('get.id','');
        $pid=I('get.pid',0);
        $this->assign('pid',$pid);
        $type=I('get.type');
        if(!in_array($type,array('project')) || (empty($id) && !in_array($type,array('project'))))$this->error('',U('Index/index'));
        $this->assign('type',$type);
        $tname=$type;

        if('project' == $type) {
            // Retrieve the category list for selection
            $catelist = M('category')->select();
            $this->assign('catelist', $catelist);
        }

        cookie('current',$id);
        if(!empty($id)){
            $this->_edit($tname,$id);
            $this->display('edit'.$type);
        }else{

            if('banner' == $type) {
                // Searching for the smallest id number available for new banner
                $mainbanners = M('banner')->where('sid >= 80001 AND sid < 90000')->getField('sid', true);
                $temp_sid = 80001;
                do {
                    if (!in_array ($temp_sid, $mainbanners)) {
                        break;
                    }
                    else {
                        ++$temp_sid;
                    }
                }while($temp_sid < 90000);
                $this->assign('sid', $temp_sid);
            }

            $this->display('edit'.$type);
        }
    }

    public function getPhoto(){
        $id=isset($_GET['id'])?I('get.id'):'';
        $type=I('get.type');
        $this->assign('type',$type);
        $tname=$type;
        if(!empty($id)){
            $list=M($tname)->where(array('id'=>$id))->find();
            echo json_encode($list);
        }
    }
    protected  function _edit($tname,$id){
        $list=M($tname)->where(array('id'=>$id))->find();

        // Special columns
        if (isset ($list['c_certificate'])) {
            $list['c_certificate'] = explode (',', $list['c_certificate']);
        }

        $this->assign('list',$list);
    }

    public function save(){
        if(''==I('post.id','') || 0==I('post.id','')) unset($_POST['id']);
        $type=I('post.type');
        if(!in_array($type,array('user', 'banner','page','category','project')))$this->error('非法操作類型',U('Index/index'));
        $tname=$type;
        $jump=cookie("__CURRENTURL__");
        $db=D($tname);
        unset($_POST['pic']);
        if(!$db->create()){
            $this->error($db->getError(),$jump);
        }else{
            $id=I('post.id','');
            // File uploading
            foreach($_FILES as $key=>$file) {
                if(empty($file['name'])) unset($_FILES[$key]);
            }
            if(count($_FILES)>0){
                $path=date("Ymd");
                $files=$this->_upload($tname,$path);
                $pid=I('post.pid');
                foreach($_FILES as $key=>$file) {
                    //过滤无效的上传
                    if(!empty($file['name'])) {
                        foreach($files as $k=>$f){
                            $filename=$f['savepath'].$f['savename'];
                            $typename=$f['key'];
                            if($typename=='pic')$this->changePic($db, $tname, $f,$filename,$path);
                            $db->$typename=$f['savepath'].$f['savename'];
                        }
                    }
            
                }
            }
            // Retrieve database fields
            $fields=$db->getDbFields();
            // Special cases
            $date=I('post.date');
            if(in_array('date',$fields)){
                if(empty($date))$db->date=date('Y-m-d');
                else $db->date=$date;
            }
            $pwd = I('post.password', null);
            if (null !== $pwd && in_array('password',$fields)) {
                $db->password = md5 ($pwd);
            }
            if (in_array('status',$fields)) {
                $status = I('post.status', null);
                if (null !== $status) {
                    $db->status = 1;
                }
                else {
                    $db->status = 0;
                }
            }
            if (in_array('visible',$fields)) {
                // radio buttons
                if (null === I('post.visible', null)) {
                    $db->visible = 'off';
                }
                if (null === I('post.hot_recomm', null)) {
                    $db->hot_recomm = 'off';
                }
                if (null === I('post.estate_recomm', null)) {
                    $db->estate_recomm = 'off';
                }
                if (null === I('post.small_business', null)) {
                    $db->small_business = 'off';
                }
            }
            $certs = I('post.c_certificate', null);
            if (null !== $certs && in_array('c_certificate',$fields)) {
                // Post var is an array (eg. checkbox)
                $db->c_certificate = implode (',', $certs);
            }

            // Add or Edit
            if(!empty($id)){
                $query=$db->save();
            }else{
                $query=$db->add();
                $id = $query;
            }

            cookie('current',$id);
            if ($query)$this->success('操作成功',$jump);
            else $this->error('操作失敗/未作任何更改',$jump);
        }
    }
    public function savePhotos(){
        $type=I('post.type');
        $tname=$type;
        $jump=cookie("__CURRENTURL__");
        $db=D($tname);
        
        $titles=I('post.title');
        $sids=I('post.sid');
        $pics=I('post.pic');
        if($type=='studentphotos'){
            $names=I('post.name');
        }
        if(!$db->create()){
            $this->error($db->getError());
        }else{
           if(count($pics)){
                foreach ($pics as $k=>$v){
                    if(!empty($v)){
                     $pid=I('post.pid');
                     $db->title=$titles[$k];
                     $db->pic=str_replace('./Uploads','',$v);
                     
                     $db->pid=$pid;
                     $db->sid=$sids[$k];
                     if($type=='studentphotos'){
                        $db->name=$names[$k];
                     }
                    $query=$db->add();
                    $db->where(array('id'=>$query))->setField('sid',$query);
                    }
                }
           }else{
              $query=$db->add();
           }	
            $this->success('Action Success',$jump);
        }
    }
    private function changePic($DB,$model,$f,$file,$path){
        $file='./Uploads'.$file;
        switch ($model){
            case 'courselist':
                $path=$f['savepath'];
                $basename=$f['savename'];
                $spic=$path.'s_'.$basename;
                $this->_thumb($file,$file,656,367);
                $this->_thumb($file,$spic,210,123);
                $DB->spic=$spic;
                break;
            case 'tutorslist':
                $this->_thumb($file,$file,80,100);
            break;
            case 'news':
                $this->_thumb($file,$file,153,96);
            break;
        }
    }
    protected function _thumb($file,$imgname,$width,$height){
        $image=new \Think\Image();
        if(!empty($file)){
            $image->open($file);
            $image->thumb($width, $height,3);
            $image->save($imgname);
        }
    }
    protected function _thumb1($file,$imgname,$width,$height){
        $image=new \Think\Image();
        if(!empty($file)){
            $image->open($file);
            $image->thumb($width, $height,1);
            $image->save($imgname);
        }
    }

    /***************************************************
     * _select()
     * $tname: table name
     * $map :  where condition
     * This function returns nothing but sets up pages and cookies,
     * assigns "show","list","listRows","fields"
     ***************************************************/
    public function _select($tname,$map=array(),$order='',$sort='',$asc=false,$query=null){
        $model=D($tname);
         
        if(isset($_REQUEST['_order'])){
            $order=$_REQUEST['_order'];
        }else{
            $order=!empty($order)?$order:$model->getPK();
        }

        if (null === $query) {
            $count=$model->where($map)->count();
        }
        else {
            $count=$model->count();
        }
         
        if ($count>0){
            if(!empty($_REQUEST['listRows'])){
                $listRows=$_REQUEST['listRows'];
                cookie($tname."_listRows",$listRows,3600);
            }elseif(cookie($tname."_listRows")){
                $listRows=cookie($tname."_listRows");
            }else{
                $pageNum=C("PAGENUM");
                $listRows=!empty($pageNum)?$pageNum:12;
            }
             
            $p=new \Org\Util\Page($count,$listRows);
            $p->setConfig('prev', '«');
            $p->setConfig('next', '»');
            $p->setConfig('last', 'the last Page');
            $p->setConfig('first', 'the first Page');
            $p->setConfig('theme','%upPage% %first%  %prePage% %linkPage%  %downPage%  %nextPage% %end%');
            if (null === $query) {
                $list=$model->where($map)->order("`" . $order . "` " . $sort)->limit($p->firstRow.",".$p->listRows)->select();
            }
            else {
                $query .= " ORDER BY `{$order}` {$sort} LIMIT {$p->firstRow},{$p->listRows}";
                $list=$model->query($query);
            }
            $show=$p->show();
            $this->assign("show",$show);
            $this->assign('list',$list);
             
            $this->assign("listRows",$listRows);
            $fields=$model->getDbFields();
            $this->assign('fields',$fields);
        }
    }

    public function uploadPic(){
        $module=I('get.model');
        $path=date("Ymd");
        $path=C(ATTACHPATH).'/'.$module.'/'.$path.'/';
        if (!is_dir($path)) mkdir($path,0755,true);
        import('Org.Util.UploadFile');
        $upload = new \UploadFile();
        $upload->maxSize=C(ATTACHSIZE);
        $upload->allowExts=explode(',',C(ATTACHEXT));
        $upload->savePath=$path;
        $upload->saveRule='uniqid';
        $data=array();
        $info=$data['result'];
        if(!$upload->upload()){
            $info['files'][0]['name']='';
            $info['files'][0]['error']=$upload->getErrorMsg();
            $json=json_encode($info);
            echo $json;
        }else{
            $file=$upload->getUploadFileInfo();
            $filename=$file[0]['savepath'].$file[0]['savename'];
            $info['files'][0]['name']=$filename;
            $this->switchPic($module, $filename);
            $json=json_encode($info);
            echo  $json;
        }
    }
    private function switchPic($module,$filename){
        $pid=I('get.pid');
        switch ($module){
            case 'newsphotoslist':
            $this->_thumb1($filename,$filename,467,350);
            break;
            case 'tutorsphotoslist':
                $this->_thumb($filename,$filename,460,344);
            break;
            case 'studentphotoslist':
                if($pid==3)
                    {
                        $this->_thumb($filename,$filename,467,350);
                    }else
                    {
                        $this->_thumb1($filename,$filename,1000,1200);
                    }
            break;
        }
    }
    public function uploadPdf(){
        $module="document";
        $path=date("Ymd");
        $path=C(ATTACHPATH).'/'.$module.'/';
        if (!is_dir($path)) mkdir($path,0755,true);
        import('Org.Util.UploadFile');
        $upload = new \UploadFile();
        $upload->maxSize=C(ATTACHSIZE);
        $upload->allowExts=explode(',',C(ATTACHEXT));
        $upload->savePath=$path;
        $upload->saveRule='uniqid';
        $data=array();
        $info=$data['result'];
        if(!$upload->upload()){
            $info['files'][0]['name']='';
            $info['files'][0]['error']=$upload->getErrorMsg();
            $json=json_encode($info);
            echo $json;
        }else{
            $file=$upload->getUploadFileInfo();
            $info['files'][0]['name']=$file[0]['savepath'].$file[0]['savename'];
            $json=json_encode($info);
            echo  $json;
        }
    }

    public function delCategory(){
        $type=I('get.type');
        if(!in_array($type,array('newscategory')))$this->error('',U('Index/index'));
        $this->assign('type',$type);
        $tname=$type;
        $id=isset($_GET['id'])?I('get.id'):'';
        $jump=cookie('__CURRENTURL__');
        if(empty($id))$this->error('Delete Failure',$jump);
        $count=M('newslist')->where(array('tid'=>$id))->count();
        if($count>0)$this->error("Delete Failure,Please delete this category's news item",$jump);
        $query=M($tname)->where(array('id'=>$id))->delete();
        if ($query)$this->success('Delete Success',$jump);
        else $this->error('Delete Failure',$jump);
    }
    public function delBanner(){
        $tname='page';
        $id=I('get.id',null);
        $jump=cookie('__CURRENTURL__');
        if(null===$id) $this->error('移除失敗',$jump);
        
        $query=M($tname)->where(array('id'=>$id))->setField('banner','');
        if ($query)$this->success('移除成功',$jump);
        else $this->error('移除失敗',$jump);
    }

    public function checkChild($type,$id,$jump){
        switch ($type){
            case 'catagory':
                $count=M('project')->where(array('cid'=>$id))->count();
                if($count>0)$this->error("Delete Failure. Please delete all projects under this catagory.",$jump);
            break;
            case 'project':
            break;
        }
    }
    public function del(){
        $type=I('get.type');
        if(!in_array($type,array('user', 'banner','page','category','project')))$this->error('',U('Index/index'));
        $tname=$type;
        $id=I('get.id','');
        $jump=cookie('__CURRENTURL__');
        if(empty($id))$this->error('Delete Failure',$jump);
        
        $this->checkChild($type,$id,$jump);
        $query=M($tname)->where(array('id'=>$id))->delete();
        if ($query)$this->success('Delete Success',$jump);
        else $this->error('Delete Failure',$jump);
    }
}