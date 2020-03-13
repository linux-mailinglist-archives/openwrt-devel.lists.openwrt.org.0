Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 866A0184F09
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 19:55:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PpAT7Ay36LzXuMqaAioNJbmhgaOnDNrmLtv6Yb44hxE=; b=hzEarcb//dz8T2oOrLpzviy0M
	grz9GtrKYHcmvWz+WHZ+B2xytJK2ZmJzcLH1jHyS0bbMBcyERuqgarAGyrUe+JjlVA8eP0Ei14SDC
	QBVtl9JbR+UMUpGzxlLJAnPkwfKTXVp0LFuVNIzWdf5ckfX5geKE1oh9wxULckmUCderkWCXF2ClM
	+HyC68ClGuMKZZhahG4GFdt2Knny+hq0RkYOszy3y/H0yplDnKWDsonN3gYSTfCMHCkRl98BVK6Nj
	zieDfAfo9d4HE4feuKG5BOd1OKa2q8aIQd8esX3prcSt7evcaQxwZES97JJMCqGTIM+ewxbXoN3DQ
	Tr9/ws7qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCpSm-0008Qx-HN; Fri, 13 Mar 2020 18:55:16 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCpSf-0008QQ-5P
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 18:55:10 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 22FA840510;
 Fri, 13 Mar 2020 18:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1584125708; bh=5Y9ZcgjaQvy6KOiFXX2L1GIXeX+BonvuehLuQElYyDU=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=kl+j2xUsAsNcDWW2yDnFwfDp5tq33Czjgt8vNor80K911/9GQc4P4VUwbgRHud1ac
 tFgwY6CRGm0q7/9uoTo8+0yft2eIw6BnewqBKTNssUIuAB5x/vpUpZ4q9Q3nHDOh0G
 QeiSBRwebGrXTJxRoyteptmcIN345yEMoJ7IuOFbJhNYG/YIsHkyRjAuLxreLY+JlK
 ibMQbXde8QL0uTLGoHIEdmSAc9rCrEpRs40TtG/FlpmTCdGwE1YL6w7knt4MixmXFn
 HXImEm9RowwiZB5cuCXqXB0zBkZgpJAwtxIaURyVTtCEYxvY6MnldfdNuXW/V005Fz
 wMoyIb7g8eoOw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 3F31FA006E;
 Fri, 13 Mar 2020 18:55:06 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 13 Mar 2020 11:54:51 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 13 Mar 2020 11:54:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yd6FFi88X3qh+BZelWt/JPiWIvINsrM44yHDD2IGAqzBo5asnQTdjkH31lC9PQSoxtzLQe5HPGbA7mfgzC1mjLqhwYFOAUDcjCpwc/2b070wd6dudzMAd8G9s7GUdKGeGQM0CTZKU6NT3+edbtQJZnuS7A/PtFlECIxiqxjB5e/yLYSscjTDoN7/I9UTYUdoNNznvGUF+e1RaAo9sA38rGD02RlHecSrpuHk/WPnpKskJBomtScc4qeEwcJAIvNOwNdNOtwe0YvePtD520Hiihq/kJVZfxw/XayuevBt+vt7Fs0TG5bm7SBDv89v/h48TCUnPtdHp5+oTuB/1GXPWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s5pifImHgesEinSc19/s4fX7ky9dI5s4JpnZSXJUB/w=;
 b=hQ8Cz2TiaFt86ZXWH4NZwhuCo3pi6ZouB4rUi5kzSr/4HLcoO5Z6V1R87VupTjMi9X45ESOvsSDJavT+HG8f8O99+lJtJ3ErkOFRugLnKZgXkC7eHLqo2srSdI9r2DUj0Q9YYxnhAloSKUHoXL9Brf6QsSC8zdHtMzArUFtEdHzpGTZ1S103AMu/hVmeaoxlA5zR7wXBeL94FzMlob43OS1RZsriHCG8ED7+x9lLU97Zq0oHYtFIcFqCeZB5VeanYJjcJsND0r9CgVSIc0El1KOfOMVh8mxT7bVsbVUg5NtdRKsfK0UZsPvCuhTL/9prBjGH9DKUYKxlaVe2b4Ln6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s5pifImHgesEinSc19/s4fX7ky9dI5s4JpnZSXJUB/w=;
 b=YDpZTsjraw0W9ImGJrlS0Ip0n+oMHAFuiDd6Y8BP0/kZMCq6aTwW4AeYbdiFiHZwglb4d7yyRbT+pVlvnhcUffyzASnQQnq/6yn33GkD1RRPMZRcwofsh06b54twGjNGJiAh/b0yno5YcrHF+P+vFgYf6+ZYN0jh3/04991xVG0=
Received: from DM6PR12MB2876.namprd12.prod.outlook.com (2603:10b6:5:15d::21)
 by DM6PR12MB4058.namprd12.prod.outlook.com (2603:10b6:5:21d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Fri, 13 Mar
 2020 18:54:50 +0000
Received: from DM6PR12MB2876.namprd12.prod.outlook.com
 ([fe80::c010:59c2:c235:c0f6]) by DM6PR12MB2876.namprd12.prod.outlook.com
 ([fe80::c010:59c2:c235:c0f6%6]) with mapi id 15.20.2793.021; Fri, 13 Mar 2020
 18:54:50 +0000
From: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
To: Evgeniy Didin <Evgeniy.Didin@synopsys.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCH 2/5] toolchain/gcc: make GCC9 by default for archs38
Thread-Index: AQHV+HMu40EB6nEkDEu21ut1RHkqkahFFkeAgAFvAO6AAFrakA==
Date: Fri, 13 Mar 2020 18:54:49 +0000
Message-ID: <DM6PR12MB2876BC36B1EA5C30AA2BBD01D9FA0@DM6PR12MB2876.namprd12.prod.outlook.com>
References: <20200312133501.17939-1-Evgeniy.Didin@synopsys.com>
 <20200312133501.17939-3-Evgeniy.Didin@synopsys.com>,
 <304d8f6c-de26-81f2-6526-4da279619139@hauke-m.de>
 <DM6PR12MB287616E2AB4BD5B1FA02E934D9FA0@DM6PR12MB2876.namprd12.prod.outlook.com>
In-Reply-To: <DM6PR12MB287616E2AB4BD5B1FA02E934D9FA0@DM6PR12MB2876.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5Lmh0bWwiIHA9ImM6XHVzZXJzXGRpZGluXGFwcGRhdGFccm9hbWluZ1wwOWQ4NDliNi0zMmQzLTRhNDAtODVlZS02Yjg0YmEyOWUzNWJcbXNnc1xtc2ctMWM2MDllNDMtNjU1Yy0xMWVhLWJlNjAtNWNlMGM1MjdkNzgyXGFtZS10ZXN0XDFjNjA5ZTQ1LTY1NWMtMTFlYS1iZTYwLTVjZTBjNTI3ZDc4MmJvZHkuaHRtbCIgc3o9IjQ4MzkiIHQ9IjEzMjI4NTk5Mjg4NjAwMzc0MSIgaD0iQy9JNjA0NWN6OUlaclJLaEwrZ1RLT29RZXJRPSIgaWQ9IiIgYmw9IjAiIGJvPSIxIi8+PC9tZXRhPg==
x-dg-rorf: true
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=didin@synopsys.com; 
x-originating-ip: [188.243.162.47]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6bdcaba6-29f0-49ce-34b8-08d7c780020a
x-ms-traffictypediagnostic: DM6PR12MB4058:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR12MB40585220A5A52435C1BECBE7D9FA0@DM6PR12MB4058.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39860400002)(396003)(346002)(366004)(376002)(199004)(81156014)(81166006)(5660300002)(33656002)(2906002)(71200400001)(2940100002)(26005)(8676002)(86362001)(55016002)(9686003)(186003)(4326008)(478600001)(76116006)(54906003)(8936002)(66946007)(110136005)(64756008)(66476007)(53546011)(6506007)(52536014)(316002)(66446008)(66556008)(7696005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR12MB4058;
 H:DM6PR12MB2876.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w8+DzKMIvXFxP0MHZS7aEfIJMxN+1bBOAZSEHTbFJF81uHUMcd4YmQx+hmfBkQp8sF3lQ+NNiyDmJLXBiO1yXvWlEEx6wfPt8/aUDHkqjY1rhC9juI6sZA1XK7DDviZPeqAdrHt3YQZW3dyB69nleolP2S9jfsV9gO4K8esHuRy0cKI+66RIQVbZb7Vn7+5VBYnQToLSxSTRD5XPFkffGIDKxMH/TliZs2Y6ZQDuBj0dTh4LPIObENJy6JpNb8ZSoah1rCEPbywyTXRXAnR6GDoEgRbVK3SuwX1qP9h2jNkvwijOatvY3jbLThXvCFjTcwcVY9KT0AdIlqrkqXNCPZO9BVPNSsdeYPKAH/5hKIVpqWqvPehehrYikSJM5/wOIfoLe3mB4DjoMy0m29lcblkhybJlet0EuiJoSyVG1hErgou8w3TaDvJVYQBjzKqo
x-ms-exchange-antispam-messagedata: AGpDbnRa8BXK/GOEOpNftoba2UaxvM0yhaQP74Ne01vPaAKsTCqi16yumK9jyrCtULGfo+oeigCHi0MXOKcKyc2vIJU+lTF2QL3SGnBQKxpnVL9cKsXNRR3znObYt6ZvGuICNvIBXRhPGf0JJqbbvg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bdcaba6-29f0-49ce-34b8-08d7c780020a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 18:54:49.8829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UN15vKTIXXER8f7mfd/E8Z3kR6kwyfqlKWHYRs/bgAKsSDxmmCX4O9vKanOc3IKk1lWtGnRNZoEKtDkv/Qzi+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4058
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_115509_290035_F3137697 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 2/5] toolchain/gcc: make GCC9 by default
 for archs38
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
Cc: =?iso-8859-2?Q?Petr_=A9tetiar?= <ynezz@true.cz>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, John Crispin <john@phrozen.org>
Content-Type: multipart/mixed; boundary="===============0621241388006532243=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0621241388006532243==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR12MB2876BC36B1EA5C30AA2BBD01D9FA0DM6PR12MB2876namp_"

--_000_DM6PR12MB2876BC36B1EA5C30AA2BBD01D9FA0DM6PR12MB2876namp_
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Also forgot to mention, that at GCC 8.4.0 it fails as well. I can try to fi=
nd missing patches between 8.4.0 and 9.2.0 and add them.
What should I better do?

-Evgeniy

From: openwrt-devel <openwrt-devel-bounces@lists.openwrt.org> On Behalf Of =
Evgeniy Didin
Sent: Friday, March 13, 2020 5:26 PM
To: Hauke Mehrtens <hauke@hauke-m.de>; openwrt-devel@lists.openwrt.org
Cc: Petr =A9tetiar <ynezz@true.cz>; Alexey Brodkin <abrodkin@synopsys.com>;=
 John Crispin <john@phrozen.org>
Subject: Re: [OpenWrt-Devel] [PATCH 2/5] toolchain/gcc: make GCC9 by defaul=
t for archs38

Hi Hauke,

This problem reproduces only for ARC(ARM is ok) and Linux v5.4 (v4.19 is ok=
).


Best regards,
Evgeniy Didin

________________________________
From: Hauke Mehrtens <hauke@hauke-m.de<mailto:hauke@hauke-m.de>>
Sent: Thursday, March 12, 2020 6:33 PM
To: Evgeniy Didin <didin@synopsys.com<mailto:didin@synopsys.com>>; openwrt-=
devel@lists.openwrt.org<mailto:openwrt-devel@lists.openwrt.org> <openwrt-de=
vel@lists.openwrt.org<mailto:openwrt-devel@lists.openwrt.org>>
Cc: Alexey Brodkin <abrodkin@synopsys.com<mailto:abrodkin@synopsys.com>>; P=
etr =A9tetiar <ynezz@true.cz<mailto:ynezz@true.cz>>; John Crispin <john@phr=
ozen.org<mailto:john@phrozen.org>>
Subject: Re: [PATCH 2/5] toolchain/gcc: make GCC9 by default for archs38

On 3/12/20 2:34 PM, Evgeniy Didin wrote:
> It is necessary to use GCC9 for building Linux 5.4.x version for
> archs38, in GCC8 the critical fixes are missing and ICE appears
> during building.

Is this problem specific to OpenWrt or is there a general problem with
arc Linux and gcc 8.3?

Should it work with gcc 8.4?

Hauke

--_000_DM6PR12MB2876BC36B1EA5C30AA2BBD01D9FA0DM6PR12MB2876namp_
Content-Type: text/html; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
2">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:56.7pt 42.5pt 56.7pt 85.05pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Also forgot to mention, that at GCC 8.4.0 it fails a=
s well. I can try to find missing patches between 8.4.0 and 9.2.0 and add t=
hem.<br>
What should I better do?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-Evgeniy<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> openwrt-devel &lt;openwrt-devel-bounces=
@lists.openwrt.org&gt;
<b>On Behalf Of </b>Evgeniy Didin<br>
<b>Sent:</b> Friday, March 13, 2020 5:26 PM<br>
<b>To:</b> Hauke Mehrtens &lt;hauke@hauke-m.de&gt;; openwrt-devel@lists.ope=
nwrt.org<br>
<b>Cc:</b> Petr =A9tetiar &lt;ynezz@true.cz&gt;; Alexey Brodkin &lt;abrodki=
n@synopsys.com&gt;; John Crispin &lt;john@phrozen.org&gt;<br>
<b>Subject:</b> Re: [OpenWrt-Devel] [PATCH 2/5] toolchain/gcc: make GCC9 by=
 default for archs38<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Hi Hauk=
e,<br>
<br>
This problem reproduces only for ARC(ARM is ok) and Linux v5.4 (v4.19 is ok=
).<o:p></o:p></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div id=3D"Signature">
<p>Best regards,<br>
Evgeniy Didin<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"3" width=3D"98%" align=3D"center">
</div>
<div id=3D"divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"color:black">From:</span></b><span=
 style=3D"color:black"> Hauke Mehrtens &lt;<a href=3D"mailto:hauke@hauke-m.=
de">hauke@hauke-m.de</a>&gt;<br>
<b>Sent:</b> Thursday, March 12, 2020 6:33 PM<br>
<b>To:</b> Evgeniy Didin &lt;<a href=3D"mailto:didin@synopsys.com">didin@sy=
nopsys.com</a>&gt;;
<a href=3D"mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.open=
wrt.org</a> &lt;<a href=3D"mailto:openwrt-devel@lists.openwrt.org">openwrt-=
devel@lists.openwrt.org</a>&gt;<br>
<b>Cc:</b> Alexey Brodkin &lt;<a href=3D"mailto:abrodkin@synopsys.com">abro=
dkin@synopsys.com</a>&gt;; Petr =A9tetiar &lt;<a href=3D"mailto:ynezz@true.=
cz">ynezz@true.cz</a>&gt;; John Crispin &lt;<a href=3D"mailto:john@phrozen.=
org">john@phrozen.org</a>&gt;<br>
<b>Subject:</b> Re: [PATCH 2/5] toolchain/gcc: make GCC9 by default for arc=
hs38</span>
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal">On 3/12/20 2:34 PM, Evgeniy Didin wrote:<br>
&gt; It is necessary to use GCC9 for building Linux 5.4.x version for<br>
&gt; archs38, in GCC8 the critical fixes are missing and ICE appears<br>
&gt; during building.<br>
<br>
Is this problem specific to OpenWrt or is there a general problem with<br>
arc Linux and gcc 8.3?<br>
<br>
Should it work with gcc 8.4?<br>
<br>
Hauke<o:p></o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_DM6PR12MB2876BC36B1EA5C30AA2BBD01D9FA0DM6PR12MB2876namp_--


--===============0621241388006532243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0621241388006532243==--

