<?PHP
require_once ("constant.php");
require_once ("fg_membersite.php");
require_once ("commonService.php");
require_once ("importService.php");
require_once ("userService.php");
require_once ("providerService.php");
require_once ("customerService.php");
require_once ("newsService.php");
require_once ("spendService.php");
require_once ("inoutService.php");
require_once ("fundService.php");
require_once ("exportService.php");
require_once ("configService.php");
require_once ("reportService.php");

$commonService = new CommonService ();
$reportService = new ReportService ( hostname, username, password, database,$commonService );
$configService = new ConfigService ( hostname, username, password, database,$commonService );

$fgmembersite = new FGMembersite ( hostname, username, password, database, tablename, $configService );
$exportService = new ExportService ( hostname, username, password, database,$commonService );
$importService = new ImportService ( hostname, username, password, database,$commonService );
$userService = new UserService ( hostname, username, password, database,$commonService );
$providerService = new ProviderService ( hostname, username, password, database,$commonService );
$customerService = new CustomerService ( hostname, username, password, database,$commonService );
$newsService = new NewsService ( hostname, username, password, database,$commonService );
$spendService = new SpendService ( hostname, username, password, database,$commonService );
$inoutService = new InoutService ( hostname, username, password, database,$commonService );
$fundService = new FundService ( hostname, username, password, database,$commonService );


// Provide your site name here
$fgmembersite->SetWebsiteName ( 'user11.com' );

// Provide the email address where you want to get notifications
$fgmembersite->SetAdminEmail ( 'user11@user11.com' );

// For better security. Get a random string from this link: http://tinyurl.com/randstr
// and put it here
$fgmembersite->SetRandomKey ( 'qSRcVS6DrTzrPvr' );

?>