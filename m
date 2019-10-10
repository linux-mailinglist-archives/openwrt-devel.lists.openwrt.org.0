Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D81D314E
	for <lists+openwrt-devel@lfdr.de>; Thu, 10 Oct 2019 21:25:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Kcu9QscOmZATBckOenn5zfXvBg5OySeSPFovphxnDwk=; b=JXz
	YVq8zIMbLMX8EsNJ0lR9QoQhasbbFUYTKFhoIgEsQWc1NqiGblSLhZPSs21jWZ0yIfbGZqssu9Uh9
	wqGOZNoQnrKsSCLNdgUfA7T43TIcTA3hkVRcRZi9CL6XJqmAkldJbWXaIRenm5kbALIiP1ESU/zU9
	zKPMvDSy3TPjLlenHh/TjikIManzZMOCTtSdO243FqIO4xgKYl+2XmU8APXp72+UC4mBYAdjmxhHY
	iwp4DyG+6okSF/VsPCWXr8+v48jgLQQr6KaOXDdUO2O96b+FVUpbcXmPsFSJgpsUlyh6QiGwc4rau
	DzfWd7dT4JyfWNvBrk9erkW3ZxFtlhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIe3O-00064S-UA; Thu, 10 Oct 2019 19:24:50 +0000
Received: from mail-eopbgr1380047.outbound.protection.outlook.com
 ([40.107.138.47] helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIe3H-00063t-Qf
 for openwrt-devel@lists.openwrt.org; Thu, 10 Oct 2019 19:24:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i3WP4qR9WNaP4Q8PugKHVRPPmKw2jw7rj3hDnCcFU1uLGSnidRowlgNAv98vQDXaLRTfmsjUuucb8DenpaULyeOFMgdJgBBqhsECGFyQKJ2w4lBT8zgiYOop7E6KoyV+yg2rolcohBF6hJqwVYlrHQLeAB4IuSGDHXWCUg9cBpOmUJFo9qne4pqZU7uX0zKyY6lInlTv8Nxyp4ZnNeDDN1nJiNWXJeMOxXTgPe/ZuxhUk1/eDhObJiWevjQg2DatI9WFkV0p6YtVPmBrrP4e6P0bDRHnd6AwxkwmSYWZoPYZbuge7+J5CmYE5KaI8JAalDBc6QfNRDmjLpo+ml/13A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2P8N1QH9BeWTISw6E3cvbW1NatrlDJ0+J3aB/BVkzBA=;
 b=hMZ8LqthwVCQYpEDyn1jx12qUqccD0ajiBzaTzDYNDUI/P0T4LnB1f3qDjCQk4sDWCQii/7VbOrjhFNFT5chwRYg/Fmbaa5fUTIfMyN4N15MFddbegaOw+krU0LmhF+QMcNfXUJmwz7AqXoj/cpyTayPE71AZZa+5HG+ZPx9znSYRPT/9fLhiFbqzFj+u+ipP8eCufRtE2QfNXzRDIKQ/ncjzzDzx3EU+DxtfTqtnz4I5GWknhwyt5rXrpaLV8Rlt9n7xz7zJmVvUPG7RTpeEjTdmMLw+vWaqwc0jy383ZNANmQF0yajq0v5VS/4pbKtb4EBj0c2hnrv5cg8D1IAwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microtechnozoom.com; dmarc=pass action=none
 header.from=microtechnozoom.com; dkim=pass header.d=microtechnozoom.com;
 arc=none
Received: from MAXPR01MB3677.INDPRD01.PROD.OUTLOOK.COM (52.134.157.215) by
 MAXPR01MB3327.INDPRD01.PROD.OUTLOOK.COM (10.255.152.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Thu, 10 Oct 2019 19:24:31 +0000
Received: from MAXPR01MB3677.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::74ae:ebc7:f932:490]) by MAXPR01MB3677.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::74ae:ebc7:f932:490%5]) with mapi id 15.20.2347.021; Thu, 10 Oct 2019
 19:24:31 +0000
From: Rachel Wheeler <rachel.wheeler@microtechnozoom.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: Ruckus Networks Users Contact List
Thread-Index: AdV/oENO92kZtNpiTHWIiLulSnKKUA==
Date: Thu, 10 Oct 2019 19:23:48 +0000
Message-ID: <MAXPR01MB3677E6CB91FE0F24130971A298940@MAXPR01MB3677.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=rachel.wheeler@microtechnozoom.com; 
x-originating-ip: [49.206.228.230]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d4df6d4-d0e8-4b7b-1c6d-08d74db779a1
x-ms-traffictypediagnostic: MAXPR01MB3327:
x-microsoft-antispam-prvs: <MAXPR01MB3327F79B9FD3AC3087902E1F98940@MAXPR01MB3327.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 018632C080
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(34096005)(376002)(366004)(346002)(39850400004)(448600002)(189003)(199004)(6916009)(44832011)(7696005)(6666004)(52536014)(186003)(26005)(38610400001)(586005)(256004)(66946007)(2501003)(66476007)(4744005)(66556008)(5660300002)(64756008)(66446008)(99286004)(81166006)(626008)(2351001)(8676002)(8936002)(9326002)(14454004)(2906002)(66066001)(3846002)(25786009)(71190400001)(71200400001)(7736002)(33656002)(486006)(476003)(55016002)(6436002)(81156014)(6506007)(55236004)(76116006)(5640700003)(54896002)(6306002)(9686003)(102836004)(74316002)(86362001)(6116002)(102460200002)(26710200004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MAXPR01MB3327;
 H:MAXPR01MB3677.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microtechnozoom.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FAuOSZ6yYz2h1Qd9+JgMm+E9wUfu8RJVIFp/RMPLBjSnpAOh+vvlkI+VTnvzbX5UgBZ9kQp0PQd7WzdG2+yYppLnVKQbkDXZf3z8vIOEWkTrXGRgueYJJwnAFktFbKZM0EgLIvOsyXRID3a+X5TVhnWEBy7EwVdH6hXvt0IB7Aj1sn7Pw7Q6Uvuc4znlCvSke/8TAqKo13pJwAJu86ObExG/H1FXSDNNt8rYlMAEQ57vI5bDYdTkWVSnlj8W0dSiu5e5Sp4bb5AiBOr6B4MzQnasVCOx/ONAbAzk+FaieXOAlixtbUrMY7X14uZLWLHGroKa1XXxeNYHWpCbEeli3a291DZY2jriUoI84SkKo0Ruaj7+6Sn42k79rrZIWhd/YyNwhprcIHgbqo4Hz7uJ7mABHC6mRr6LbIyfssyJtJI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: microtechnozoom.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d4df6d4-d0e8-4b7b-1c6d-08d74db779a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2019 19:23:48.3845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0bee6a9d-6206-4e17-a184-2a33d2eb155b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E4baBrVc/Y8L0GNCDqqUCpqr64F/Vpz4doUFMrvjcRuBQW7IClVCw4M+vBqXxDFFFOXoOpQFAVhC06AaEDtedXjadVk/XfAZwQhQtzbgvurmK439VKbmQ/3xebygIEhV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB3327
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_122443_865807_5B84EEC1 
X-CRM114-Status: UNSURE (  -3.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.138.47 listed in list.dnswl.org]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?49.206.228.230>]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
Subject: [OpenWrt-Devel] Ruckus Networks Users Contact List
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1542576978044433934=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1542576978044433934==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB3677E6CB91FE0F24130971A298940MAXPR01MB3677INDP_"

--_000_MAXPR01MB3677E6CB91FE0F24130971A298940MAXPR01MB3677INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I would like to know if you are interested in acquiring Ruckus Networks Use=
rs Contact List.

Information fields: Names, Title, Email, Phone, Company Name, Company URL, =
Company physical address, SIC Code, Industry and Specialty (Revenue and Emp=
loyee).

Let me know if you are interested and I will get back to you with the count=
s and pricing.

Regards,

Rachel Wheeler
Marketing Executive


--_000_MAXPR01MB3677E6CB91FE0F24130971A298940MAXPR01MB3677INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Cambria;
	panose-1:2 4 5 3 5 4 6 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:8.0pt;
	line-height:107%;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria&quot;,serif=
;color:black">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria&quot;,serif=
;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria&quot;,serif=
;color:black">I would like to know if you are interested in acquiring
<b><u>Ruckus Networks Users Contact List</u></b>.<b><u><o:p></o:p></u></b><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria&quot;,serif=
;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria&quot;,serif=
;color:black">Information fields: Names, Title, Email, Phone, Company Name,=
 Company URL, Company physical address, SIC Code, Industry and Specialty (R=
evenue and Employee).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria&quot;,serif=
;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria&quot;,serif=
;color:black">Let me know if you are interested and I will get back to you =
with the counts and pricing.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria&quot;,serif=
;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria&quot;,serif=
;color:black">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria&quot;,serif=
;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Cambria&quot;,se=
rif;color:black">Rachel Wheeler<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Cambria&quot;,se=
rif;color:black">Marketing Executive<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_MAXPR01MB3677E6CB91FE0F24130971A298940MAXPR01MB3677INDP_--


--===============1542576978044433934==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1542576978044433934==--

