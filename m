Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB0C184945
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 15:27:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hi2u2c2wgREgksnFq0kAo0HkjLBRV0Dbi8j9IbuyBuc=; b=XT+x+Hfm+Rst/bba3newOra6b
	fvqEEJHU8U35vt/2LxJvMQUrfoifGkOxbRjtvmeOI2JxdUnPiD8gPLgsbT47eJC/pERUjt2rcL7qA
	nJrvalwzmBQHHdj97bH38sqbabVdc985INVVH1OdN/Df1tiUE8YEBrtrUrFd8S52Bp1Y8+Qz4HQyI
	Xbge9YFL0eDX/3k0LTa12m8L5f73kIcbf1mcKfk8B99o0WHb76txut2H7BglYWYHr2wt0X5sH6ScO
	Ib+uGmNYdpsS+eD0UWFBdaSim2W44Kxu20Ok5S8oDVzDEELibz5V3llhyEm41UIXmiKM4+32heG5V
	5FpRRqkKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jClH5-0007Od-4u; Fri, 13 Mar 2020 14:26:55 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jClGo-0007Iz-9z
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 14:26:39 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E8500404F9;
 Fri, 13 Mar 2020 14:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1584109595; bh=PSnRG8MBhr4JGGwXSo/g3VYosQXNralvjEzyUrYw6xU=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=fgJ+dta/R+nSV9qWMcMBNSGc/KqXKI0L76if71jtSgh4MDb/0y+l2zeHh4+SVsFeA
 r0dhL/e4kMqsjESyhk9Gd6lMdm9HP8xUMRDx2/ovNBLStsQ5kfBf6PL9Jp0czDe1dp
 o0TgnGLnLZ1HVztH8h+fUA+3aJoHgDRfCrvpA9F8fqVstnH1aPAMJFU6SeG6sMKtWR
 58Yg/3mjJ/0KrFUggR7poeYg7BM9GjslwdZjf2fYIqQb/Hb/0T8XiVJZc+X/wEONZe
 fOPqCFjUiyac7EKq45Lj4BMTkI9js7u1Bj3X4TlJNipS/xKwqWijiqyycAPQcKCeOb
 qHWc5YrBu8UqQ==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id AF144A0067;
 Fri, 13 Mar 2020 14:26:33 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 13 Mar 2020 07:26:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 13 Mar 2020 07:26:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xgy79lxpK9WMPOf70lPECf/OD8AaPG4qMO7hpillm1NH9Mpf7Sc3sJdcRzouSGLCsjYiEh0JnWlQN1rn90DB8wzJPQGqjNyO9WZTm1cEEuwWkqOGX7Ma3Y1Yvf6eiS9W+QU0zhP/+vJH4e+tMrd78Xm+1WL6DA5r0jhbFnSv2faX/+EGhysZpQCtnou7T41PBhwgmNw8rbwfn6n8VScGmVoaQ2kH5dwhtKIqOfBVLl2NsUmEkRP92gWHab8qrLxQcEVkh4cl64ugxrcl08b0AbkEu7pm26TFZ00azlNNKm0iU/FUGIgpX++6qHmPb4FC6mDJ/FaoulUa2YikmYTfAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PSnRG8MBhr4JGGwXSo/g3VYosQXNralvjEzyUrYw6xU=;
 b=kkodo9g6sxCWXPAJIsBG1vWZXMuhxRVwLEKPeO7Ah9AqZl1ZGhWDLIpu2bltyX+nJ9jVeKKJAnKX0H5tSWltlUSmKi5Q5gHjIuX69lske4s7zard5nY8QxJx5R97HPgf12bX5sgaqOvNMjdvqcYIWrsoB5X8YZxBgf+QRH5LF9G8GWKVfkVoOCgzqHz33r1cVb699bxmPYu0qNhR5Nny2a6cXVRTQv8XNVQd8svnWqo3OSkkAl2au/tlr0zttvZo3x/N/2Zi7NuK7PFrEa9Ma1OaqxywAXvhKkW3WtyQB0XWQA2hEy0oWYGZtG360E50R80QQnK5ZmgZOpmWERmPdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PSnRG8MBhr4JGGwXSo/g3VYosQXNralvjEzyUrYw6xU=;
 b=aXmFGE5NWpC5kPUx24tSQPkU4bHCnv1OFcv3T2BWelOA4khcRBjTgams4ZnCKeUsMMhDiuj6PHfyt5dOoKrWQxg6JHvzUkgPHW4Zuh0AIPsd+2zt7u3Lq+t67bkG2T+yPYFMtXjRrtBJi9KZOIUgQ0ipBlw2BQZ8p7PKc3r21cE=
Received: from DM6PR12MB2876.namprd12.prod.outlook.com (2603:10b6:5:15d::21)
 by DM6PR12MB2843.namprd12.prod.outlook.com (2603:10b6:5:48::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Fri, 13 Mar
 2020 14:26:30 +0000
Received: from DM6PR12MB2876.namprd12.prod.outlook.com
 ([fe80::c010:59c2:c235:c0f6]) by DM6PR12MB2876.namprd12.prod.outlook.com
 ([fe80::c010:59c2:c235:c0f6%6]) with mapi id 15.20.2793.021; Fri, 13 Mar 2020
 14:26:30 +0000
From: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
To: Hauke Mehrtens <hauke@hauke-m.de>, "openwrt-devel@lists.openwrt.org"
 <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCH 2/5] toolchain/gcc: make GCC9 by default for archs38
Thread-Index: AQHV+HMu40EB6nEkDEu21ut1RHkqkahFFkeAgAFvAO4=
Date: Fri, 13 Mar 2020 14:26:29 +0000
Message-ID: <DM6PR12MB287616E2AB4BD5B1FA02E934D9FA0@DM6PR12MB2876.namprd12.prod.outlook.com>
References: <20200312133501.17939-1-Evgeniy.Didin@synopsys.com>
 <20200312133501.17939-3-Evgeniy.Didin@synopsys.com>,
 <304d8f6c-de26-81f2-6526-4da279619139@hauke-m.de>
In-Reply-To: <304d8f6c-de26-81f2-6526-4da279619139@hauke-m.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=didin@synopsys.com; 
x-originating-ip: [84.204.78.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cebd21d4-7f8f-4ff9-3e02-08d7c75a85b3
x-ms-traffictypediagnostic: DM6PR12MB2843:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR12MB2843B69F902B1A4E47929ACED9FA0@DM6PR12MB2843.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(39860400002)(136003)(366004)(396003)(199004)(9686003)(7696005)(4326008)(19627405001)(8936002)(4744005)(6506007)(53546011)(5660300002)(54906003)(52536014)(316002)(33656002)(2906002)(110136005)(66946007)(76116006)(66476007)(66446008)(66556008)(64756008)(478600001)(91956017)(86362001)(81166006)(81156014)(8676002)(71200400001)(186003)(55016002)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR12MB2843;
 H:DM6PR12MB2876.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rT4sJ3UTMIjcbZQunsZzc918wt+RiT8Vt8E2l0VlTYQ14X2W4dMgSmgXD+8wxT2Oc908KwA2nzpA5L9Z9T3lNpGrCkuKR9rpuke9/UwkjmWLoQmHDbnCdTT+vFIG9jByW0QxaBkd3awdTnttGOp1xGD/Pee5JE6Eyln5gahJLFl+HMAwLZw8Xl1IdoExniYoqT7VcXr9lhs6MfzI1zvzoHqnckEozlodbqcjXlUMxeyRtcUD8HHgKpRpx8JoBTbyIdOHGEeRWmvLUl4RuQS5kBJoWP4TGxRqb1rgVvhFzyJkiX1LG26EV9sjI6yxKLQvs6ox6+knckYfBoGOA27sDAbNMY6SepLN99rXIT2pDvurqVqyn3wKvyC8x1lcDKXoiI1gtV8CDiR4Ydjr3lWCfipZBdgGCCGfhbkg/U0w+e1s/NPlaPsRTeSCs18i+rg9
x-ms-exchange-antispam-messagedata: xKFtSnlX3JYDD0Hh+JUp9jjy/lQeMr1aHVfvPs00AFZcqelkjIbuFiTsNdu8fB6cviiEK2Onre0bGnMq/36dNi6LNdn8tCL6ChEx8UEvBPC9jO0scfOeS1ZMCWGAzHiKsNoTPoU262Tb0GuEOzhaDg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cebd21d4-7f8f-4ff9-3e02-08d7c75a85b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 14:26:29.9355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /k2YXmszge2YVYsJ6/lvNP6wUnsz9plHkooFd7k1lHP2C4oiL+XEztK7NZFrfSI5d2lySjpz3Mv5UsmzYsSIDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB2843
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_072638_362934_82BAACAA 
X-CRM114-Status: GOOD (  12.70  )
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
Cc: =?Windows-1252?Q?Petr_=8Atetiar?= <ynezz@true.cz>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, John Crispin <john@phrozen.org>
Content-Type: multipart/mixed; boundary="===============1039163397242601138=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1039163397242601138==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR12MB287616E2AB4BD5B1FA02E934D9FA0DM6PR12MB2876namp_"

--_000_DM6PR12MB287616E2AB4BD5B1FA02E934D9FA0DM6PR12MB2876namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Hauke,

This problem reproduces only for ARC(ARM is ok) and Linux v5.4 (v4.19 is ok=
).


Best regards,
Evgeniy Didin

________________________________
From: Hauke Mehrtens <hauke@hauke-m.de>
Sent: Thursday, March 12, 2020 6:33 PM
To: Evgeniy Didin <didin@synopsys.com>; openwrt-devel@lists.openwrt.org <op=
enwrt-devel@lists.openwrt.org>
Cc: Alexey Brodkin <abrodkin@synopsys.com>; Petr =8Atetiar <ynezz@true.cz>;=
 John Crispin <john@phrozen.org>
Subject: Re: [PATCH 2/5] toolchain/gcc: make GCC9 by default for archs38

On 3/12/20 2:34 PM, Evgeniy Didin wrote:
> It is necessary to use GCC9 for building Linux 5.4.x version for
> archs38, in GCC8 the critical fixes are missing and ICE appears
> during building.

Is this problem specific to OpenWrt or is there a general problem with
arc Linux and gcc 8.3?

Should it work with gcc 8.4?

Hauke

--_000_DM6PR12MB287616E2AB4BD5B1FA02E934D9FA0DM6PR12MB2876namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi Hauke,<br>
<br>
This problem reproduces only for ARC(ARM is ok) and Linux v5.4 (v4.19 is ok=
).<br>
</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<p>Best regards,<br>
Evgeniy Didin</p>
</div>
</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Hauke Mehrtens &lt;=
hauke@hauke-m.de&gt;<br>
<b>Sent:</b> Thursday, March 12, 2020 6:33 PM<br>
<b>To:</b> Evgeniy Didin &lt;didin@synopsys.com&gt;; openwrt-devel@lists.op=
enwrt.org &lt;openwrt-devel@lists.openwrt.org&gt;<br>
<b>Cc:</b> Alexey Brodkin &lt;abrodkin@synopsys.com&gt;; Petr =8Atetiar &lt=
;ynezz@true.cz&gt;; John Crispin &lt;john@phrozen.org&gt;<br>
<b>Subject:</b> Re: [PATCH 2/5] toolchain/gcc: make GCC9 by default for arc=
hs38</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">On 3/12/20 2:34 PM, Evgeniy Didin wrote:<br>
&gt; It is necessary to use GCC9 for building Linux 5.4.x version for<br>
&gt; archs38, in GCC8 the critical fixes are missing and ICE appears<br>
&gt; during building.<br>
<br>
Is this problem specific to OpenWrt or is there a general problem with<br>
arc Linux and gcc 8.3?<br>
<br>
Should it work with gcc 8.4?<br>
<br>
Hauke<br>
</div>
</span></font></div>
</body>
</html>

--_000_DM6PR12MB287616E2AB4BD5B1FA02E934D9FA0DM6PR12MB2876namp_--


--===============1039163397242601138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1039163397242601138==--

