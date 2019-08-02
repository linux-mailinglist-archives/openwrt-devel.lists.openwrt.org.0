Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57A67FE8D
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 18:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GpbFDU/BhQlAVZFkFd/IS8qN2CVdF2rEI9ivtg4Um8=; b=dysLgQso/3643h
	07yJtbnULX9ZiSQxuGtTrslufETYGyR3rGWltdGqv83H8B0JaHhxrdcpOfP73/BZNhnOzP+wbyHrj
	t5DM/05+XaJnTsvWW2oc/Ovja5l44MlzWL4HIqQSLPZSCReFdsKLI9OL2Se/ABgWLN4M2PY41dGc/
	y4Ts7VldpFJG6cwuOj+ezknJN7DdS3Uv15qAGNcUKrGmD6HP6i/ybRnKZYEKGX7nkT8i7hnE8G1G6
	yCd1iWdl8lp+YcyzeOOI4XqIxzcPLRbIfxdlhFVgf1FQh9/lm2HofB4Jc/hpcC2Sz93nYbiTl8+7n
	z56JtXSxThW7TY0xU7Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htaLc-0004cF-BX; Fri, 02 Aug 2019 16:24:04 +0000
Received: from mail-eopbgr700054.outbound.protection.outlook.com
 ([40.107.70.54] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htaLW-0004b4-J3
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 16:24:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i6BfHvwXG4Qgfur6tR7LI0oWK8ADkplc4bFXETuA7QCD3Gnh+yGE8ljQ7px4coLRlNOYc4KMRlf1bZctRFwdT6F6K0ChsoD2plMp+rUdUR4bMbXBUz28ygYqdVlsVXQzXLojSG3vCrSWrgMUxWUb+3d4YNY30ey+vGJIQXpiLhn/1+E8gS9sRmHJ3Vcya18F4DUoyn1ZnvuFoqm4upT1GTmGgWlIoKi6ZIG7ufQVqHIOz8V8fCsSGUz2kKnvEs34APiZP/aIp3zYOt8kRfF2EWvbh1qpQf6kOVDUexqTlj/q98qxLWH2KosLX/O4dbG7eVVg7iTyAuzbx9AlpmJF8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G0VTs2BnOm3vtzPZz4jNZwMOiUnEAyMZoxMpGEaCNBQ=;
 b=mBywnykbKVh98Zc1lBFTpMQAvMoTvwkV+A+OKM3d41C5FqfFpTxcc4TipwW8ohDct8/R8IZalQI/6gz0E3nk/t0xOM1OAlc7PUeVWPypRLsa60xHMP4uQVn4WKkvDd6gBYuelvxH144UmxiPlCa8D9P4I+kDqXL+LfI8+SngMBG5nofAbmiCk4CZ3GktGBn5R1i2+zVkc1WgS1Il93u9D8ZFxBI6gU/y8kkZMcmbi7INS1IfV3xliHmrvFpKyQkZJTJKK0SCNmVsLhPJWKnF8UQk6+Q384br5CqCI7r8VJYM2GHBEMEZNtho4LPgYb75bhfWHoXEql+t0A8atPLy3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=jci.com;dmarc=pass action=none header.from=jci.com;dkim=pass
 header.d=jci.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jci.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G0VTs2BnOm3vtzPZz4jNZwMOiUnEAyMZoxMpGEaCNBQ=;
 b=fnmQfJ+hZgC8nz/RMZgVcTEUU6gwL7QCPx4427N1/F/y9rWlkknYFFBcYfOMgMeb064eRRpn2Hi6qBGWJ3E26Ax7rrAESY6IdMc/RnTCRoPxrFnw0nFIn7V7fpOJncnXvpenZJo5Fip5p/yMVv2GBkFJ5YNwqvC+xSh6r7ssgIw=
Received: from CY4P132MB0106.NAMP132.PROD.OUTLOOK.COM (141.251.37.149) by
 CY4P132MB0137.NAMP132.PROD.OUTLOOK.COM (52.135.21.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.16; Fri, 2 Aug 2019 16:23:55 +0000
Received: from CY4P132MB0106.NAMP132.PROD.OUTLOOK.COM
 ([fe80::397b:1f8b:412f:14f2]) by CY4P132MB0106.NAMP132.PROD.OUTLOOK.COM
 ([fe80::397b:1f8b:412f:14f2%9]) with mapi id 15.20.2115.005; Fri, 2 Aug 2019
 16:23:54 +0000
From: Nick Schaf <nick.schaf@jci.com>
To: =?iso-8859-2?Q?Petr_=A9tetiar?= <ynezz@true.cz>
Thread-Topic: [OpenWrt-Devel] Memory leak related to OpenWrt patch of hostapd
Thread-Index: AdVHpSrbxmcW5EsRRmWRCDlxLFoxcwBA516AACiv0CA=
Date: Fri, 2 Aug 2019 16:23:54 +0000
Message-ID: <CY4P132MB01068A35B953A54B9030E1FB8BD90@CY4P132MB0106.NAMP132.PROD.OUTLOOK.COM>
References: <BN6P132MB0098F57D3CA062CE1CBB935C8BDF0@BN6P132MB0098.NAMP132.PROD.OUTLOOK.COM>
 <20190801203623.GO74752@meh.true.cz>
In-Reply-To: <20190801203623.GO74752@meh.true.cz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_6be01c0c-f9b3-4dc4-af0b-a82110cc37cd_Enabled=True;
 MSIP_Label_6be01c0c-f9b3-4dc4-af0b-a82110cc37cd_SiteId=a1f1e214-7ded-45b6-81a1-9e8ae3459641;
 MSIP_Label_6be01c0c-f9b3-4dc4-af0b-a82110cc37cd_Owner=cschafn@jci.com;
 MSIP_Label_6be01c0c-f9b3-4dc4-af0b-a82110cc37cd_SetDate=2019-08-02T16:23:53.2845377Z;
 MSIP_Label_6be01c0c-f9b3-4dc4-af0b-a82110cc37cd_Name=Internal ;
 MSIP_Label_6be01c0c-f9b3-4dc4-af0b-a82110cc37cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_6be01c0c-f9b3-4dc4-af0b-a82110cc37cd_ActionId=09382a4e-2571-42c4-9c8d-1e3e85d6199a;
 MSIP_Label_6be01c0c-f9b3-4dc4-af0b-a82110cc37cd_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=nick.schaf@jci.com; 
x-originating-ip: [165.225.57.37]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 33351ad4-dd1e-45ab-5446-08d71765d043
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CY4P132MB0137; 
x-ms-traffictypediagnostic: CY4P132MB0137:
x-microsoft-antispam-prvs: <CY4P132MB01372B5694BE187D0EC4A2D28BD90@CY4P132MB0137.NAMP132.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(376002)(39860400002)(136003)(396003)(189003)(199004)(86362001)(81156014)(7736002)(9686003)(6116002)(478600001)(74316002)(7696005)(6436002)(81166006)(316002)(6506007)(44832011)(5660300002)(55016002)(52536014)(25786009)(53936002)(305945005)(4326008)(3846002)(2906002)(99286004)(14454004)(33656002)(68736007)(6246003)(66066001)(256004)(446003)(11346002)(476003)(8676002)(71190400001)(71200400001)(54906003)(102836004)(66556008)(55236004)(64756008)(66446008)(76116006)(486006)(66476007)(186003)(8936002)(229853002)(26005)(6916009)(66946007)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4P132MB0137;
 H:CY4P132MB0106.NAMP132.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: jci.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4ucKSJNx244FYBkpHYpnoyhSIR5nmZapdB1Ymhc2cuYlZ93gvHnkQsJNr7R07dsyZW90hmeQwccQA5PLjy5wtGN3VsBsWIaaOM3W8XxGydFcnzd2CCXVv2gcHooBx0gCLe0y/2KNAsJXLGSNDn2akyWBlJ9B2nyR43lPeqUZsMwkeNNpE1C/lV6uzuxq9RgIKg5TZuCvrDnf7V9M3Ivmlo7jCr8a3ZaVwte9xqaL0vcwLxv4wBeWH2KQW/225K9zajBv4yq80OKOxDaWJ76EC5hVVhtxh/3PoRAe83M0UrgLKwMGIsvB02w9rk4VLtvJr3BevJXraZVrn9DcZA7BBvHsHb6Vj9LtSsVbx6Z44mOoHMsgh+rvHDNaF6JXjpBd14nvcZpXFNilusBjC7Soa+gjQ61V8LsPlW3J6UJlUug=
MIME-Version: 1.0
X-OriginatorOrg: jci.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33351ad4-dd1e-45ab-5446-08d71765d043
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 16:23:54.8484 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a1f1e214-7ded-45b6-81a1-9e8ae3459641
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cschafn@jci.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4P132MB0137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_092358_665060_445C16DE 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
Subject: Re: [OpenWrt-Devel] Memory leak related to OpenWrt patch of hostapd
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



> Nick Schaf <nick.schaf@jci.com> [2019-07-31 16:34:36]:
> 
> Hi,
> 
> > I've noticed the wpa_supplicant process on my mesh interfaces leaking
> > memory to the point that the kernel kills the process.  It was
> > discovered in 18.06.2, but I've reproduced it with 18.06.4 and with
> > the master branch from the GitHub repo.  Since the leak occurs as mesh
> > links are created and destroyed, I was able to reproduce it with a
> > simple two-node setup where I monitor the wpa_supplicant process VSZ
> > on one node and repeatedly bring wifi up and down on the other node.
> >
> > I've traced it back to the 18.06.2 release, specifically to lines
> > 34-35 of
> > package/network/services/hostapd/patches/015-mesh-do-not-use-
> offchan-m
> > gmt-tx-on-DFS.patch
> > +                 (modes = nl80211_get_hw_feature_data(bss,
> > + &num_modes,
> > &flags, +
> > &dfs_domain)) && That code was added in
> > a35f24309021c1c0e9cbed0faedf58b941cb4bd3.
> >
> > I removed the entire patch file to resolve the memory leak because the
> > subsequent call to ieee80211_is_dfs() uses the return value from
> > nl80211_get_hw_feature_data().  However, I know the problem is
> > specifically related to the nl80211_get_hw_feature_data() call because
> > I stepped-backward through commits of the hostapd source until I got
> > back to 0f7fc6b98de9c69f511b9b22f2b65553126362eb, where
> > ieee80211_is_dfs() had only one argument and didn't rely on the
> > nl80211_get_hw_feature_data() return value.  At that point, the memory
> > leak still occurred until I commented-out the call to
> nl80211_get_hw_feature_data().
> >
> > I attempted to dive into nl80211_get_hw_feature_data(), but was
> > quickly lost, so I defer to those that are more experienced in that code.
> 
> you did a nice job here to track it down, so thanks for reporting this, can you
> try this patch[1]?
> 

I had already tried an os_free(modes) and found no resolution.  However, to be sure, I tried your patch today and still observe the leak, but also checked original code to determine whether the leak rate reduced with the patch.  From that test (data below) it seems possible that the modes leak I might be a small portion of the overall leak I observed.
I still suspect the main leak to be somewhere inside nl80211_get_hw_feature_data.

For your reference, data from today's quick test is below.  VSZ is "VmSize" from /proc/[PID]/status where PID=wpa_supplicant's process ID.  Unpatched is the clean 18.06.4 code.  Patched is the same with your patch applied.
The other node cycles the connection ~ every 30 seconds (while [ 1 ]; do wifi down; sleep 10; wifi; sleep 20; done).
We don't see a rise in memory every 30 seconds, leading me to believe the leaked memory was allocated from a memory pool and the pool size needs to be periodically increased as the leak continues.

Time (s),VSZ unpatched,VSZ patched
0,3408,3404
10,3408,3408
20,3408,3416
30,3408,3416
40,3408,3420
50,3408,3440
60,3408,3440
70,3412,3440
80,3432,3440
90,3432,3440
100,3432,3440
110,3432,3464
120,3432,3464
130,3432,3464
140,3432,3464
150,3432,3464
160,3436,3464
170,3456,3464
180,3456,3464
190,3456,3464
200,3456,3464
210,3456,3464
220,3460,3464
230,3480,3468
,,3468
,,3468
,,3472
,,3472
,,3472
,,3496

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
