<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends BaseController {
    public function index(){
        // For search box
        $dblist = M('category_'.$this->lang)->select();
        $catelist = array();
        foreach ($dblist as $item) {
            $catelist[$item['id']] = $item['name'];
        }
        $this->assign('catelist', $catelist);
        $this->assign('categories', $dblist);
        // For banner
        $bannerlist = M('banner_'.$this->lang)->where(array('status'=>1))->select();
        $this->assign('banners', $bannerlist);
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
        // News
        $news = M('news_'.$this->lang)->where(array('status'=>1))->order('`date` DESC')->limit('1')->select();
        $this->assign('news', $news[0]);

        parent::language();

        $this->display();
    }

    public function query(){
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
        // All project info
        $projects = M('project_'.$this->lang)->select();
        $this->assign('projects', $projects);

        parent::language();

        $this->display('query');
    }

    public function formSubmit() {
        $name = I('post.guestname');
        $email = I('post.guestemail');
        $phone = I('post.guesttel');
        $message = I('post.other');
        $jshopv = I('post.jshop_value');
        $subject = '[Message From: Buy Business]';
        $body = $jshopv.'<br/><br/>'.$message.'<br/><br/>Name: '.$name.'<br/>Email: '.$email.'<br/>Phone: '.$phone;
        $this->msg = $this->postMail ($body, $subject, 'josontse@tcglobalwork.com', '2757144278@qq.com');

        $this->assign('sent', '1');
        $this->query();
    }
    public function postMail($body,$subject,$to,$name,$isHTML = true) {
        require('./ThinkPHP/Library/Vendor/PHPMailer/class.smtp.php');
        require('./ThinkPHP/Library/Vendor/PHPMailer/class.phpmailer.php');
        $mail = new \PHPMailer;
        $mail->CharSet = 'UTF-8';
        $mail->IsSMTP ();
        $mail->SMTPDebug = 0;
        $mail->SMTPAuth = true;
        $mail->Host = 'mail.lifespring.com.hk';
        $mail->Port = '26';
        $mail->Username = 'system@lifespring.com.hk';
        $mail->Password = '2201sys##';
        mb_internal_encoding ('UTF-8');
        $mail->Subject = mb_encode_mimeheader ($subject, 'UTF-8');
        $mail->From = 'system@lifespring.com.hk';
        $mail->FromName = 'Buy Business';

        if (!$isHTML) {
            $mail->isHTML (false);
            $mail->Body = $body;
        }
        else {
            $mail->AltBody = 'To view the message, please use an HTML compatible email viewer.';
            $mail->MsgHTML ($body);
        }
        
        $mail->AddAddress ($to, $name);
        
        return $mail->Send() ? true : $mail->ErrorInfo;
    }

    public function shareFormSubmit() {
        $email = I('post.email');
        $subject = I('post.subject');
        $body = I('post.body').'<br/>Email Address: '.$email;
        $this->msg = $this->postMail ($body, $subject, 'josontse@tcglobalwork.com', '2757144278@qq.com');

        $id = I('post.project_id');
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

        $dblist = M('category_'.$this->lang)->select();
        $catelist = array();
        foreach ($dblist as $item) {
            $catelist[$item['id']] = $item['name'];
        }
        $this->assign('catelist', $catelist);
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

        $this->display('Project/project_detail');
    }

    public function BuyersQuery() {
        $name = I('post.input_text_1');
        $email = I('post.input_text_2');
        $tel = I('post.input_text_3');
        $suggest = I('post.input_text_14');
        $contact_date = I('post.input_datetime_15');
        $accept = I('post.input_radio_19'); // 'Yes'
        $subject = '[Message From: Buy Business, 來自買家查詢]';
        $body = '姓名: '.$name.'<br/>電郵: '.$email.'<br/>電話號碼: '.$tel.'<br/>意見: '.$suggest.'<br/>最方便之聯絡時間: '.$contact_date.'<br/>接收最新資訊: '.$accept;
        $this->msg = $this->postMail ($body, $subject, 'josontse@tcglobalwork.com', '2757144278@qq.com');

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

        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'買家查詢'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display('Page/buyers_query');
    }

    public function SellersQuery() {
        $name = I('post.input_text_1');
        $email = I('post.input_text_2');
        $tel = I('post.input_text_3');
        $suggest = I('post.input_text_14');
        $contact_date = I('post.input_datetime_15');
        $accept = I('post.input_radio_19'); // 'Yes'
        $subject = '[Message From: Buy Business, 來自賣家查詢]';
        $body = '姓名: '.$name.'<br/>電郵: '.$email.'<br/>電話號碼: '.$tel.'<br/>意見: '.$suggest.'<br/>最方便之聯絡時間: '.$contact_date.'<br/>接收最新資訊: '.$accept;
        $this->msg = $this->postMail ($body, $subject, 'josontse@tcglobalwork.com', '2757144278@qq.com');

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

        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'賣家查詢'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display('Page/sellers_query');
    }

    public function contactSubmit() {
        $name = I('post.guestname');
        $email = I('post.guestemail');
        $tel = I('post.guesttel');
        $other = I('post.other');
        $subject = '[Message From: Buy Business, 來自聯絡我們]';
        $body = '姓名: '.$name.'<br/>電郵: '.$email.'<br/>電話號碼: '.$tel.'<br/><br/>其它意見: '.$other;
        $this->msg = $this->postMail ($body, $subject, 'josontse@tcglobalwork.com', '2757144278@qq.com');

        // For search box
        $dblist = M('category_'.$this->lang)->select();
        $catelist = array();
        foreach ($dblist as $item) {
            $catelist[$item['id']] = $item['name'];
        }
        $this->assign('catelist', $catelist);
        $this->assign('categories', $dblist);

        parent::language();

        // Retrieve page contents
        $page = M('page_'.$this->lang)->where(array('title'=>'聯絡我們'))->select();
        $this->assign('banner', $page[0]['banner']);
        $this->assign('content', $page[0]['content']);

        $this->display('Page/contact');
    }

    public function JoinFormSubmit() {
        $email = I('post.guestemail');
        $name = I('post.guestname');
        $tel = I('post.guesttel');
        $age = I('post.guestage');
        $addr = I('post.guestaddr');
        $birth = I('post.guestbirth');
        $gender = I('post.guestgender');
        $occu = I('post.guestoccu');
        $interest = I('post.interest');
        $subject = '[Message From: Buy Business, 加入創富會]';
        $body = '姓名: '.$name.'<br/>電郵: '.$email.'<br/>電話號碼: '.$tel.'<br/>地址: '.$addr.'<br/>性別: '.$gender.'<br/>年齡: '.(1==$age?'男':'女').'<br/>出生日期: '.$birth.'<br/>職業: '.$occu.'<br/>感興趣之行業: '.$interest;
        $this->msg = $this->postMail ($body, $subject, 'josontse@tcglobalwork.com', '2757144278@qq.com');

        $dblist = M('category_'.$this->lang)->select();
        $catelist = array();
        foreach ($dblist as $item) {
            $catelist[$item['id']] = $item['name'];
        }
        $this->assign('catelist', $catelist);
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

        $this->display('Page/join_form');
    }

    public function EnquirySubmit() {
        $email = I('post.input_email');
        $name = I('post.input_name');
        $tel = I('post.input_phone');
        $subject = '[Message From: Buy Business, 創業要求查詢表格]';
        $body = '姓名: '.$name.'<br/>電郵: '.$email.'<br/>電話號碼: '.$tel;
        $body.= '<br/>電話號碼: '.I('post.input_sex');
        $body.= '<br/>職業: '.I('post.input_job');
        $body.= '<br/>理想創業之行業選擇(首選): '.I('post.input_business1').'    (其它：'.I('post.input_business_other').')';
        $body.= '<br/>理想創業之行業選擇（次選）: '.I('post.input_business2').'    (其它：'.I('post.input_business2_other').')';
        $body.= '<br/>理想創業之營業地點(首選): '.I('post.input_address1');
        $body.= '<br/>理想創業之營業地點(次選): '.I('post.input_address2');
        $body.= '<br/>理想創業之投資金額: '.I('post.input_amount');
        $body.= '<br/>理想創業之投入程度: '.I('post.input_level').'    (其它：'.I('post.input_level_other').')';
        $body.= '<br/>目前工作現況: '.I('post.input_now');
        $body.= '<br/>有否創業合作伙伴？: '.I('post.input_partner').'      ('.I('post.input_partner_num').')';
        $body.= '<br/>有否創業經驗？: '.I('post.input_exam').'      ('.I('post.input_exam_other').')';
        $body.= '<br/><br/>其他意見(請註明): '.I('post.input_comment');
        $body.= '<br/>最方便之聯絡時間: '.I('post.input_time');
        $this->msg = $this->postMail ($body, $subject, 'josontse@tcglobalwork.com', '2757144278@qq.com');

        $dblist = M('category_'.$this->lang)->select();
        $catelist = array();
        foreach ($dblist as $item) {
            $catelist[$item['id']] = $item['name'];
        }
        $this->assign('catelist', $catelist);
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

        $this->display('Page/enquiry');
    }

    public function AjaxSearch() {
        $type = I('get.type', 'project');
        $order = I('request.o',null);
        $sort = I('request.s','DESC');
        $keyword = I('request.keyword',null);
        $page = I('request.p',1);
        $visible = I('request.visible',null);
        $cate = I('request.cate',null);
        $hot = I('request.hot',null);

        $map_recomm = I('request.recomm',null);
        $map_smallbusiness = I('request.small_business',null);
        $map_1stchoice = I('request.first_choice',null);
        $map_invest = I('post.extra_19',null);
        $map_profit = I('post.extra_5',null);
        $map_participate = I('post.checkbox_participate',null);
        $map_recovery = I('post.extra_16',null);
        $map_square = I('post.extra_7',null);
        $map_rent = I('post.extra_6',null);
        $map_location = I('post.checkbox_location',null);
        $map_metro = I('post.checkbox_metro',null);
        $map_checkbox = I('post.checkbox',null);

        $dblist = M('category_'.$this->lang)->select();
        $catelist = array();
        foreach ($dblist as $item) {
            $catelist[$item['id']] = $item['name'];
            $catelist_t[$item['id']] = $item['t'];
        }

        $model=D($type.'_'.$this->lang);

        $map = array();

        if (null === $order || '' == $order) {
            $order = $model->getPK();
        }
        if (null === $sort || '' == $sort) {
            $sort = 'DESC';
        }
        if (null === $page || '' == $page) {
            $page = 1;
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
        if (null !== $map_location) {
            $map['c_location'] = array('in', $map_location);
        }
        if (null !== $map_metro) {
            $map['c_metro'] = array('in', $map_metro);
        }

        if (null !== $map_invest) {
        /*
            $map['investment'] = array ();
            if (in_array ('48', $map_invest)) {
                $map['investment'][] = array ('between','0,100000');
            }
            if (in_array ('49', $map_invest)) {
                $map['investment'][] = array ('between','100001,300000');
            }
            if (in_array ('50', $map_invest)) {
                $map['investment'][] = array ('between','300001,500000');
            }
            if (in_array ('51', $map_invest)) {
                $map['investment'][] = array ('between','500001,800000');
            }
            if (in_array ('52', $map_invest)) {
                $map['investment'][] = array ('between','800001,1500000');
            }
            if (in_array ('149', $map_invest)) {
                $map['investment'][] = array ('between','1500001,2500000');
            }
            if (in_array ('150', $map_invest)) {
                $map['investment'][] = array ('gt',2500000);
            }
            $map['investment'][] = 'or';
            */
            $inarray = array();
            if (in_array ('48', $map_invest)) {
                $inarray[] = 'HK$100,000或以下';
            }
            if (in_array ('49', $map_invest)) {
                $inarray[] = 'HK$100,001-300,000';
            }
            if (in_array ('50', $map_invest)) {
                $inarray[] = 'HK$300,001-500,000';
            }
            if (in_array ('51', $map_invest)) {
                $inarray[] = 'HK$500,001-800,000';
            }
            if (in_array ('52', $map_invest)) {
                $inarray[] = 'HK$800,001-1,500,000';
            }
            if (in_array ('149', $map_invest)) {
                $inarray[] = 'HK$1,500,001-2,500,000';
            }
            if (in_array ('150', $map_invest)) {
                $inarray[] = 'HK$2,500,000以上';
            }
            $map['investment'] = array('in', $inarray);
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
                $map['recovery_period'][] = array ('between','6.1,12');
            }
            if (in_array ('12.1-24', $map_recovery)) {
                $map['recovery_period'][] = array ('between','12.1,24');
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
            $c_area1 = array();
            foreach ($map_checkbox as $key=>$vals) {
                if('地區' != $catelist_t[$key]) {
                    foreach ($vals[1] as $v) {
                        $c_field1[] = $v;
                    }
                    foreach ($vals[2] as $v) {
                        $c_field2[] = $v;
                    }
                }
                else {
                    foreach ($vals as $v) {
                        $c_area1[] = $v;
                    }
                }
            }
            if (count($c_field1) > 0) {
                $map['c_field1'] = array ('in', $c_field1);
            }
            if (count($c_field2) > 0) {
                $map['c_field2'] = array ('in', $c_field2);
            }
            if (count($c_area1) > 0) {
                $map['c_area1'] = array ('in', $c_area1);
            }
        }

        if (null !== $keyword && !empty($keyword)) {
            $map['title'] = array ('like', "%{$keyword}%");
        }

        if (null !== $visible) {
            $map['visible'] = 'on';
        }

        if (null != $cate && !empty($cate) && 'undefined' != $cate) {
            $map['c_field'] = $cate;
        }

        if ('on' == $hot) {
            $map['hot_recomm'] = 'on';
        }

        //$map['_logic'] = 'or';
        // Filtering END

        $count = $model->where($map)->count();

        $results = array ();

        if ($count>0) {
            $pageNum=I('request.nr','');
            $listRows=!empty($pageNum)?$pageNum:12;

            $results['data'] = $model->where($map)->order("`" . $order . "` " . $sort)->limit((($page-1)*$listRows).",".$listRows)->select();

            // Special processes
            foreach ($results['data'] as &$data) {
                $data['field'] = $catelist[$data['c_field']];
                $data['participation'] = $catelist[$data['c_participation']];
                $data['situation'] = $catelist[$data['c_situation']];
                $data['profit'] = number_format ($data['profit'], 0);
                $data['recovery_period'] = str_replace ('.0', '', number_format ($data['recovery_period'], 1));
                $data['price'] = number_format ($data['price'], 0);
                $data['allowance'] = number_format ($data['allowance'], 0);
                $data['rent'] = number_format ($data['rent'], 0);
            }

            $results['numpages'] = (int)(($count-1)/$listRows)+1;
        }
        else {
        }

        $results['msg'] = 'Success';

        $results['p'] = $page;

        $results['sql'] = $model->getLastSql();

        echo json_encode($results);
    }

    // SQL execution 
    /*public function sql() {
        $q = "INSERT INTO `gc_userb` (`id`, `user`, `pass`, `created`, `current`, `last`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2012-10-10 00:22:02', '2014-12-22 15:28:41', '2014-11-23 15:32:38');
";
        $results = M()->query($q);
        //$this->response->setOutput("<h2>{$q}</h2>".var_export($results,1));
        if(false !== $results) {
            $this->success("{$q} Success",'index.php',5);
        }
        else {
            $this->error("{$q} Failure",'index.php',5);
        }
    }*/
}