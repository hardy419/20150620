<?php 
namespace Home\Controller;
use Think\Controller;
class BaseController extends Controller {

	protected $lang;

	public function __construct(){
		parent::__construct();
		/* if(!$this->checkStatus()){
		    $loginMarked=md5(C('AUTH_Home_TOKEN'));
			if(isset($_SESSION[$loginMarked])){
				unset($_SESSION[$loginMarked]);
			}
		}  */

		$this->lang = I('cookie.lang', 'zh');
		$this->assign ('lang', $this->lang);

		$this->assign ('area_id', 1);
		$this->assign ('field_id', 2);
		$this->assign ('participation_id', 4);
		$this->assign ('location_id', 5);
		$this->assign ('metro_id', 7);
		$this->assign ('yinshiye_id', 9);
		$this->assign ('jiaoyuye_id', 17);
		$this->assign ('meirongye_id', 56);
		$this->assign ('lingshouye_id', 62);
		$this->assign ('fuwuye_id', 77);
		$this->assign ('qitahangye_id', 92);
		$this->assign ('caishi_id', 10);
		$this->assign ('shidian_id', 11);
		$this->assign ('chipaizhuangkuang_id', 23);
		$this->assign ('leibie_id', 24);
		$this->assign ('hkjingwai_id', 126);

		$this->menu();
	}
	private function menu(){
		$courses=M('programmeslist')->field('id,etitle,title')->order('sid desc,id desc')->select();
		$menu=array();
		$menu['courses']=$courses;
		
		$tutors=M('tutorslist')->field('id,title')->order('sid desc,id desc')->select();
	
		$menu['tutors']=$tutors;
		
		$this->assign('menu',$menu);
	}
    private  function checkStatus(){
      	 $loginMarked=md5(C('AUTH_Home_TOKEN'));
      	 
      	 if(!$_SESSION[$loginMarked]){
      	 	return false;
      	 }
      	 $cookie=explode("_",cookie($loginMarked));
      	 $outtime=C('LOGIN_Home_TIMEOUT');
      	 
      	 if(intval(time())>($outtime+end($cookie)))return false;
      	 if($cookie[0]!=$loginMarked)return false;
      	 cookie($loginMarked,$cookie[0].'_'.time(),0,'/');
      	 return true;
    }

	protected function language() {
        // language
        $lang = I('get.lang', I('cookie.lang', 'zh'));

        if ('zh' == $lang) {
            $this->assign ('text_header_title', '創富易業務轉讓有限公司');
            $this->assign ('text_chaxunrexian', '查詢熱線');
            $this->assign ('text_fip', '行業，投資金額，利潤');
            $this->assign ('text_diqu', '地區');
            $this->assign ('text_shuruguanjianzi', '輸入關鍵字');
            $this->assign ('text_shouye', '首頁');
            $this->assign ('text_guanyuwomen', '關於我們');
            $this->assign ('text_chuangfuxuzhi', '創富須知');
            $this->assign ('text_maijiashougouyewu', '買家收購業務');
            $this->assign ('text_maijiachurangyewu', '賣家出讓業務');
            $this->assign ('text_xianzhengchurangyewu', '現正出讓業務');
            $this->assign ('text_yingshangxuzhi', '營商須知');
            $this->assign ('text_xiangguanlianjie', '相關連結');
            $this->assign ('text_lianluowomen', '聯絡我們');
            $this->assign ('text_gongsijianjie', '公司簡介');
            $this->assign ('text_jiazhiguan', '我們的價值觀');
            $this->assign ('text_fuwufanwei', '服務範圍');
            $this->assign ('text_chuangfuxuzhi', '創富須知');
            $this->assign ('text_chuangfuzuolaoban', '創富做老板');
            $this->assign ('text_chuangfumoshi', '創富模式之比較');
            $this->assign ('text_heweiyewuzhuanrang', '何謂「業務轉讓」');
            $this->assign ('text_weihexuanzeyewuzhuanrang', '爲何選擇業務轉讓');
            $this->assign ('text_changjianwenti', '常見問題');
            $this->assign ('text_maijiashougouchengxu', '買家收購程序');
            $this->assign ('text_weihexuanzewomen', '爲何選擇我們');
            $this->assign ('text_maijiachaxun', '買家查詢');
            $this->assign ('text_maijiachurangchengxu', '賣家出讓程序');
            $this->assign ('text_yewuguzhi', '業務估值');
            $this->assign ('text_weihexuanzewomen', '爲何選擇我們');
            $this->assign ('text_maijiachaxun2', '賣家查詢');
            $this->assign ('text_kaiyeziliaoku', '開業資料庫');
            $this->assign ('text_yingyeziliaoku', '營業資料庫');
            $this->assign ('text_copyright', '&copy; 2005 - 2015創富易業務轉讓有限公司 <span class="fr">天域國際投資投資成員<span>');
            $this->assign ('text_banquansuoyou', '版權所有 不得轉載');
            $this->assign ('text_banquanshengming', '版權聲明');
            $this->assign ('text_mianzetiaokuan', '免責條款');
            $this->assign ('text_lianluowomen', '聯絡我們');
            $this->assign ('text_gerensiyinzhengce', '個人私隱政策');

            $this->assign ('text_daihaomingcheng', '代號名稱');
            $this->assign ('text_churangxiangmu', '出讓項目');
            $this->assign ('text_cankaolirun', '參考利潤');
            $this->assign ('text_baokuocunhuo', '包括存貨/其他');
            $this->assign ('text_huibenqi', '回本期(月)');
            $this->assign ('text_dingjia', '定價(HKD)');
            $this->assign ('text_gongkuan', '供款(月)');
            $this->assign ('text_mianji', '面積(平方尺)');
            $this->assign ('text_zujin', '租金(月)');
            $this->assign ('text_canyuchengdu', '參與程度');
            $this->assign ('text_xiangmuqingkuang', '項目情況');
            $this->assign ('text_ruxuanzeduoyuyigexiangmu', '如選擇多於一個項目，請按 “加入清單”後再按“即時查詢”');

            $this->assign ('text_dingjia', '定價');
            $this->assign ('text_cankaolirun', '參考利潤(每月)');

            $this->assign ('text_touzishouxuan', '投資首選');
            $this->assign ('text_chaozhituijie', '筍盤推介');
            $this->assign ('text_xiaobenchuangye', '小本創業');
            $this->assign ('text_rementuijie', '熱門推介');
            $this->assign ('text_jingxuantuijie', '精選推介');

            $this->assign ('text_chuangfuhui', '創富會');
            $this->assign ('text_jingyingzhaopin', '精英招聘');
            $this->assign ('text_hezuohuoban', '合作夥伴');
            $this->assign ('text_chuangyechaxun', '創業查詢');
            $this->assign ('text_zuixinxiaoxi', '最新消息');
            $this->assign ('text_gengduoxinwen', '更多新聞');

            $this->assign ('text_mianfeidengji', '免費登記您的創富要求');
            $this->assign ('text_weininpeidui', '為您配對合適好生意');
            $this->assign ('text_ancichaxun', '按此查詢');

            $this->assign ('text_yinshi', '飲食');
            $this->assign ('text_jiaoyu', '教育');
            $this->assign ('text_meirongmeijia', '美容美甲');
            $this->assign ('text_lingshou', '零售');
            $this->assign ('text_fuwu', '服務');
            $this->assign ('text_qita', '其他');

            $this->assign ('text_yueduquanwen', '閱讀全文');
            $this->assign ('text_more', '更多');

            $this->assign ('text_xingming', '姓名');
            $this->assign ('text_lianxidianhua', '聯繫電話');
            $this->assign ('text_dianyou', '電郵');
            $this->assign ('text_qitayijian', '其它意見');
            $this->assign ('text_chuansong', '傳送');
            $this->assign ('text_chongxie', '重寫');
            $this->assign ('text_shanchu', '刪除');
            $this->assign ('text_fasongchenggong', '您的消息發送成功，謝謝');
            $this->assign ('text_required', '請填寫帶*號的部分');
            $this->assign ('text_chaxunshibai', '查詢失敗，請重試');
            $this->assign ('text_yijiaruchaxunxiangmu', '已加入查詢項目');

            $this->assign ('text_zhuti', '主題');
            $this->assign ('text_neirong', '內容');

            $this->assign ('text_xuanzequanbu', '選擇全部');
            $this->assign ('text_renhehangye', '任何行業');
            $this->assign ('text_suoyouleibie', '所有類別');
            $this->assign ('text_suoyou', '所有');
            $this->assign ('text_renhe', '任何');
            $this->assign ('text_quan', '全');
            $this->assign ('text_qu', '區');

            $this->assign ('text_month', '個月');

            $this->assign ('text_ticknomorethan', '查詢項目數不能超過');

        }
        else if ('cn' == $lang) {
            $this->assign ('text_header_title', '创富易业务转让有限公司');
            $this->assign ('text_chaxunrexian', '查询热线');
            $this->assign ('text_fip', '行业，投资金额，利润');
            $this->assign ('text_diqu', '地区');
            $this->assign ('text_shuruguanjianzi', '输入关键字');
            $this->assign ('text_shouye', '首页');
            $this->assign ('text_guanyuwomen', '关于我们');
            $this->assign ('text_chuangfuxuzhi', '创富须知');
            $this->assign ('text_maijiashougouyewu', '买家收购业务');
            $this->assign ('text_maijiachurangyewu', '卖家出让业务');
            $this->assign ('text_xianzhengchurangyewu', '现正出让业务');
            $this->assign ('text_yingshangxuzhi', '营商须知');
            $this->assign ('text_xiangguanlianjie', '相关连结');
            $this->assign ('text_lianluowomen', '联络我们');
            $this->assign ('text_gongsijianjie', '公司简介');
            $this->assign ('text_jiazhiguan', '我们的价值观');
            $this->assign ('text_fuwufanwei', '服务范围');
            $this->assign ('text_chuangfuxuzhi', '创富须知');
            $this->assign ('text_chuangfuzuolaoban', '创富做老板');
            $this->assign ('text_chuangfumoshi', '创富模式之比较');
            $this->assign ('text_heweiyewuzhuanrang', '何谓「业务转让」');
            $this->assign ('text_weihexuanzeyewuzhuanrang', '为何选择业务转让');
            $this->assign ('text_changjianwenti', '常见问题');
            $this->assign ('text_maijiashougouchengxu', '买家收购程序');
            $this->assign ('text_weihexuanzewomen', '为何选择我们');
            $this->assign ('text_maijiachaxun', '买家查询');
            $this->assign ('text_maijiachurangchengxu', '卖家出让程序');
            $this->assign ('text_yewuguzhi', '业务估值');
            $this->assign ('text_weihexuanzewomen', '为何选择我们');
            $this->assign ('text_maijiachaxun2', '卖家查询');
            $this->assign ('text_kaiyeziliaoku', '开业资料库');
            $this->assign ('text_yingyeziliaoku', '营业资料库');
            $this->assign ('text_copyright', '&copy; 2005 - 2015创富易业务转让有限公司 <span class="fr">天域国际投资投资成员</span>');
            $this->assign ('text_banquansuoyou', '版权所有 不得转载');
            $this->assign ('text_banquanshengming', '版权声明');
            $this->assign ('text_mianzetiaokuan', '免责条款');
            $this->assign ('text_lianluowomen', '联络我们');
            $this->assign ('text_gerensiyinzhengce', '个人私隐政策');

            $this->assign ('text_daihaomingcheng', '代号名称');
            $this->assign ('text_churangxiangmu', '出让项目');
            $this->assign ('text_cankaolirun', '参考利润');
            $this->assign ('text_baokuocunhuo', '包括存货/其他');
            $this->assign ('text_huibenqi', '回本期(月)');
            $this->assign ('text_dingjia', '定价(HKD)');
            $this->assign ('text_gongkuan', '供款(月)');
            $this->assign ('text_mianji', '面积(平方尺)');
            $this->assign ('text_zujin', '租金(月)');
            $this->assign ('text_canyuchengdu', '参与程度');
            $this->assign ('text_xiangmuqingkuang', '项目情况');
            $this->assign ('text_ruxuanzeduoyuyigexiangmu', '如选择多于一个项目，请按“加入清单”后再按“即时查询”');

            $this->assign ('text_dingjia', '定价');
            $this->assign ('text_cankaolirun', '参考利润(每月)');

            $this->assign ('text_touzishouxuan', '投资首选');
            $this->assign ('text_chaozhituijie', '超值推介');
            $this->assign ('text_xiaobenchuangye', '小本创业');
            $this->assign ('text_rementuijie', '热门推介');
            $this->assign ('text_jingxuantuijie', '精选推介');

            $this->assign ('text_chuangfuhui', '创富会');
            $this->assign ('text_jingyingzhaopin', '精英招聘');
            $this->assign ('text_hezuohuoban', '合作伙伴');
            $this->assign ('text_chuangyechaxun', '创业查询');
            $this->assign ('text_zuixinxiaoxi', '最新消息');
            $this->assign ('text_gengduoxinwen', '更多新闻');

            $this->assign ('text_mianfeidengji', '免费登记您的创富要求');
            $this->assign ('text_weininpeidui', '为您配对合适好生意');
            $this->assign ('text_ancichaxun', '按此查询');

            $this->assign ('text_yinshi', '饮食');
            $this->assign ('text_jiaoyu', '教育');
            $this->assign ('text_meirongmeijia', '美容美甲');
            $this->assign ('text_lingshou', '零售');
            $this->assign ('text_fuwu', '服务');
            $this->assign ('text_qita', '其他');

            $this->assign ('text_yueduquanwen', '阅读全文');
            $this->assign ('text_more', '更多');

            $this->assign ('text_xingming', '姓名');
            $this->assign ('text_lianxidianhua', '联系电话');
            $this->assign ('text_dianyou', '邮箱');
            $this->assign ('text_qitayijian', '其它意见');
            $this->assign ('text_chuansong', '传送');
            $this->assign ('text_chongxie', '重写');
            $this->assign ('text_shanchu', '删除');
            $this->assign ('text_fasongchenggong', '您的消息发送成功，谢谢');
            $this->assign ('text_required', '请填写带*号的部分');
            $this->assign ('text_chaxunshibai', '查询失败，请重试');
            $this->assign ('text_yijiaruchaxunxiangmu', '已加入查询项目');

            $this->assign ('text_zhuti', '主题');
            $this->assign ('text_neirong', '内容');

            $this->assign ('text_xuanzequanbu', '选择全部');
            $this->assign ('text_renhehangye', '任何行业');
            $this->assign ('text_suoyouleibie', '所有类别');
            $this->assign ('text_suoyou', '所有');
            $this->assign ('text_renhe', '任何');
            $this->assign ('text_quan', '全');
            $this->assign ('text_qu', '区');

            $this->assign ('text_month', '个月');

            $this->assign ('text_ticknomorethan', '查询项目数不能超过');

        }
        else if ('en' == $lang) {
            $this->assign ('text_header_title', 'Buy Business Ltd.');
            $this->assign ('text_chaxunrexian', 'Hotline');
            $this->assign ('text_fip', 'Indus., Invest. Amt, Profit');
            $this->assign ('text_diqu', 'District');
            $this->assign ('text_shuruguanjianzi', 'Enter keywords');
            $this->assign ('text_shouye', 'Home');
            $this->assign ('text_guanyuwomen', 'About Us');
            $this->assign ('text_chuangfuxuzhi', "Buyer's Reference");
            $this->assign ('text_maijiashougouyewu', 'Buyer Acquisition');
            $this->assign ('text_maijiachurangyewu', 'Selling Business');
            $this->assign ('text_xianzhengchurangyewu', 'Business For Sale');
            $this->assign ('text_yingshangxuzhi', 'Useful　Information');
            $this->assign ('text_xiangguanlianjie', 'Useful Links');
            $this->assign ('text_lianluowomen', 'Contact Us');
            $this->assign ('text_gongsijianjie', 'Company Profile');
            $this->assign ('text_jiazhiguan', 'Our Values');
            $this->assign ('text_fuwufanwei', 'Scope of Services');
            $this->assign ('text_chuangfuxuzhi', "Buyer's Reference");
            $this->assign ('text_chuangfuzuolaoban', 'Startup Be a Boss');
            $this->assign ('text_chuangfumoshi', 'Startup Model');
            $this->assign ('text_heweiyewuzhuanrang', 'What is Business Brokerage');
            $this->assign ('text_weihexuanzeyewuzhuanrang', 'Why Choose Business Brokerage');
            $this->assign ('text_changjianwenti', 'FAQ');
            $this->assign ('text_maijiashougouchengxu', 'Acquisition Procedure');
            $this->assign ('text_weihexuanzewomen', 'Why Choose Us');
            $this->assign ('text_maijiachaxun', 'Buyer Enquiry');
            $this->assign ('text_maijiachurangchengxu', 'Selling Procedure');
            $this->assign ('text_yewuguzhi', 'Business Valuation');
            $this->assign ('text_weihexuanzewomen', 'Why Choose Us');
            $this->assign ('text_maijiachaxun2', 'Seller Enquiry');
            $this->assign ('text_kaiyeziliaoku', 'Startup Reference');
            $this->assign ('text_yingyeziliaoku', 'Reference');
            $this->assign ('text_copyright', '&copy; 2005－2015 Buy Business Ltd. <span class="fr">Sky Vision International Investments Ltd.</span>');
            $this->assign ('text_banquansuoyou', 'All Rights Reserved');
            $this->assign ('text_banquanshengming', 'Copyright Notice');
            $this->assign ('text_mianzetiaokuan', 'Disclaimer');
            $this->assign ('text_lianluowomen', 'Contact Us');
            $this->assign ('text_gerensiyinzhengce', 'Privacy Policy ');

            $this->assign ('text_daihaomingcheng', 'Code Name');
            $this->assign ('text_churangxiangmu', 'Selling Items');
            $this->assign ('text_cankaolirun', 'Indicative Profit');
            $this->assign ('text_baokuocunhuo', 'Including Inventory');
            $this->assign ('text_huibenqi', 'Payback Period(Month)');
            $this->assign ('text_dingjia', 'Selling Price(HKD)');
            $this->assign ('text_gongkuan', 'Installment (Month)');
            $this->assign ('text_mianji', 'Area(Sq.ft.)');
            $this->assign ('text_zujin', 'Monthly Rent');
            $this->assign ('text_canyuchengdu', "Proprietor's participation");
            $this->assign ('text_xiangmuqingkuang', 'Status');
            $this->assign ('text_ruxuanzeduoyuyigexiangmu', 'If you want to select more than one item, please press “Add To Enquiry” and then press “Enquiry”');

            $this->assign ('text_dingjia', 'Selling Price');
            $this->assign ('text_cankaolirun', 'Indicative Profit');

            $this->assign ('text_touzishouxuan', 'Investment choice');
            $this->assign ('text_chaozhituijie', 'Promotional Items');
            $this->assign ('text_xiaobenchuangye', 'Small Captial Business');
            $this->assign ('text_rementuijie', 'Hot Items');
            $this->assign ('text_jingxuantuijie', 'Selective Items');

            $this->assign ('text_chuangfuhui', 'Buy Business Club');
            $this->assign ('text_jingyingzhaopin', 'Recruitment');
            $this->assign ('text_hezuohuoban', 'Business Alliance');
            $this->assign ('text_chuangyechaxun', 'Enquiry');
            $this->assign ('text_zuixinxiaoxi', 'Latest news');
            $this->assign ('text_gengduoxinwen', 'More');

            $this->assign ('text_mianfeidengji', 'Free Registration');
            $this->assign ('text_weininpeidui', 'Free Matching ');
            $this->assign ('text_ancichaxun', 'Click Here');

            $this->assign ('text_yinshi', 'Food & Beverage');
            $this->assign ('text_jiaoyu', 'Education');
            $this->assign ('text_meirongmeijia', 'Beauty');
            $this->assign ('text_lingshou', 'Retails');
            $this->assign ('text_fuwu', 'Services');
            $this->assign ('text_qita', 'Others');

            $this->assign ('text_yueduquanwen', 'More');
            $this->assign ('text_more', 'More');

            $this->assign ('text_xingming', 'Name');
            $this->assign ('text_lianxidianhua', 'Mobile');
            $this->assign ('text_dianyou', 'Email');
            $this->assign ('text_qitayijian', 'Comments');
            $this->assign ('text_chuansong', 'Send');
            $this->assign ('text_chongxie', 'Reset');
            $this->assign ('text_shanchu', 'Remove');
            $this->assign ('text_fasongchenggong', 'Your message has been sent, thank you!');
            $this->assign ('text_required', 'Please fill in the blanks with *');
            $this->assign ('text_chaxunshibai', 'Query failed. Please retry');
            $this->assign ('text_yijiaruchaxunxiangmu', '已加入查詢項目');

            $this->assign ('text_zhuti', 'Subject');
            $this->assign ('text_neirong', 'Contents');

            $this->assign ('text_xuanzequanbu', 'Select All');
            $this->assign ('text_renhehangye', 'Select All');
            $this->assign ('text_suoyouleibie', 'Select All');
            $this->assign ('text_suoyou', 'All ');
            $this->assign ('text_renhe', 'Any ');
            $this->assign ('text_quan', 'All ');
            $this->assign ('text_qu', '');

            $this->assign ('text_month', ' month');

            $this->assign ('text_ticknomorethan', '查詢項目數不能超過');

        }

        $this->assign ('lang', $lang);
    }
}
?>