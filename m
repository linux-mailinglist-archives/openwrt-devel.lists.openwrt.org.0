Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09886B03B8
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Sep 2019 20:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xLuvY7y28dk0PGLnPcOj18KUS++p4OJi6X4t757fCaM=; b=cdVa0FEgXhgsDG
	WPUfS4urzfUEqlCjjF5Q4pPOLXlLO6dkMH8OftSmyeKobER3AB9MyioTirzKo+XwEJx4qpv+gVq7K
	9JWmHP+iQOvtCFxh3LPajjugm8nZkzFRP5Ztl9+dy+ot9KRwHENtwanxFe+MH21P1jeh7q5+L+3xx
	cZHkm9Fld61v2DjTFx/57fqNV9GVAG/Oav/HFvWOB86IJBSZxYLj0go94fvxkYDpettfpKx7Jnz0d
	il6MsVGc6FEWlcLrrhZLdiX+s6zwjxprqiYSTGhPIFSczyWCDOzEMzzc6UY6aeGHZwyM2SCUHPHJK
	VLE/ZIepij4FwMSRBCrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i87Tb-0000sL-6p; Wed, 11 Sep 2019 18:36:23 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i87TF-0000rC-IG
 for openwrt-devel@lists.openwrt.org; Wed, 11 Sep 2019 18:36:04 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: O154aQd7u1vaVFv0NtsTWJZQHAhMRycytdfzzt6vi1c5s6zsS5AcfNpTqtdyXJFUnEd4YSO/6O
 LVnjfNj4J+qaAUmoybIHS2HuCUoBpWYRrUe5VsQS7zwgV3Fs5lzl1bmIaAVi9mucJ8jrwBN5Q3
 lCzUHaKsLV8JmHs3RuSh33/0Omnt8HbI4KzaXH6nv1bLXJsC9ed40ix38G4t6EQ7o6VbzN7Whg
 LcgP7LRSyq7kSjV5u5ysCmPuHAL5gO0uji1Mh4RXUN+1/TszAM0S+ub8viMu2MQnWc6fdlPnLb
 JgY=
X-IronPort-AV: E=Sophos;i="5.64,494,1559545200"; d="scan'208";a="50109685"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 11:35:59 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 11:35:59 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 11 Sep 2019 11:35:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DbgcubGWB+l/j/JbPneF4v3FmWHGsSaOpxDGt+sIy4azCjIC/Qw1z9mKcFR34LR5FL2Opo4ODslSahf6e78V8m5p44fll6A1paQfmvgsbppH6QDw2PqLNm0m8jqeneqLyyYzZdyZ+CKivYPE6DypHBV+nUCVPsNV3+BE9xubZ/G1Y55/zI5xc8Tx+JjqSgUb34MOL55nTP/mznW+BtOV2VUkFnx2sLl0R0s3VG6Tpt+zyecCzd6yJXD84dNNLYLJPYR1CKsPeKv676Yv9lkabQaHa2Qvure86DkmAtaKqOdiubDkr2k2PSdtJ/s4xqIpAzl5IsLW6bIf4mLFpHhqTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wuIsWQLu5ZDP3yt6pfp3FDO3gWGqiFMchnlb5q8/Pg4=;
 b=XMGrNme76/wQhLFoS0BckGXwcsroUELFG3wLkXqsBHKXihyFB8yGtYYhidTvdKkzeST+70at3irriT6hqvUhgLy/Zdbo4VWWKcJh747bhUK7XHB0K5p/CU32ZiKmW5mhr56mRfYmh5kZSvOeoH+NxIRBw6Eu8jihrjPrGy3sVIeoTAHPYYxkYkyKXKqd8C3aDbqkfJIj4HU+G+6jkh/OGF6y5NOEnhXmfRgI/FV1jRJ+o1l1bxYKQPiMumD5QHKkGegC+mRPqtiulzMfGF14gS3HTsjEl5kz6pE/ngPXUiq511UZBDkqVmy87Lnzzrm39Tnj610Bkd5erbrECdY5UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wuIsWQLu5ZDP3yt6pfp3FDO3gWGqiFMchnlb5q8/Pg4=;
 b=FaIsNVs0glErq3W7p90mxP5Q4DgaC9rQzJ1OXCNh3OFUI02rTg9GtpiMpoblO716CZFeck2Tv55Olj8e9ZJkAT9dFvBDsxs1yEIqp2tI+W8TSc1Dp2oUXLg1y6yZTmj8syGvnNIjjkolpri4a/E4ciemhzUT5FosxSxFb3vKQq8=
Received: from BYAPR11MB3157.namprd11.prod.outlook.com (20.177.126.222) by
 BYAPR11MB3749.namprd11.prod.outlook.com (20.178.238.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.17; Wed, 11 Sep 2019 18:35:55 +0000
Received: from BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::56f:70b3:cd63:6b30]) by BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::56f:70b3:cd63:6b30%7]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 18:35:55 +0000
From: <Sandeep.Sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Thread-Topic: [at91 patches 0/2] at91 patches
Thread-Index: AQHVaM++aR6T8dRvc0ihUGEn8PSPMQ==
Date: Wed, 11 Sep 2019 18:35:54 +0000
Message-ID: <1568226855-29385-1-git-send-email-sandeep.sheriker@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BY5PR16CA0019.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::32) To BYAPR11MB3157.namprd11.prod.outlook.com
 (2603:10b6:a03:75::30)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [198.175.253.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63285c5e-956d-49ad-49c5-08d736e6e129
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR11MB3749; 
x-ms-traffictypediagnostic: BYAPR11MB3749:
x-microsoft-antispam-prvs: <BYAPR11MB374963D3FA8EC53C7CFF069582B10@BYAPR11MB3749.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(136003)(396003)(366004)(199004)(189003)(86362001)(6116002)(3846002)(4744005)(6486002)(6916009)(2501003)(2616005)(476003)(486006)(6512007)(5660300002)(478600001)(50226002)(25786009)(2351001)(316002)(2906002)(66446008)(99286004)(36756003)(52116002)(64756008)(102836004)(66476007)(66946007)(66556008)(53936002)(26005)(186003)(14454004)(256004)(71190400001)(7736002)(305945005)(81166006)(66066001)(6436002)(81156014)(5640700003)(8936002)(71200400001)(6506007)(8676002)(386003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3749;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: peTz8vyIx2WaffqOdMLAZ7CkPVbqUtbXFYLMIuWID0nNbzd8ak1mlArL5pNSokWpZH3RarOB+gTv2t2eiVf23nrU1EKpZavPwQOs9hyxV523s859ndR//PYXimQ1yAZ+DRBMdgnxCZA2ObKfeGcVFiIVCGRuGkrUEHgCAyOaPHD8QrQo8ky+yQR79fBFM3tdlxQrb8Q2SnlGIawaNz8vhH+kpU2NEyq5kirQoM9cINLmZ8Fjg/t7XbLOGsV1cNUowAXxVlie/JdYP9U+MgiAX3BanJ9aOUbiCoPpm2tVfO2xSTeNiNDS4RYHQPIPhk5cdaHsA7dzMbDeBejGVEdl09OokBsCsLV/R+43phFtQMqOhKrVBLVhnIkECeDT/ELAhGvQkzcvPHQTOXT9USDKHvIHpYabRDKkw565CCjFSfQ=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 63285c5e-956d-49ad-49c5-08d736e6e129
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 18:35:55.0868 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PrgtNV9Vlm1Q3xrlGLSdJixxi5X6ugm2Z+tEIAft3bRJ4jeGG245Qn/IUOGNIr8PZqXwOGbtTh0imPWP/6WvPaE4Khf7I/Ll5t6BpkjN5dK5An8KLiOPEixe7Wje4/+gmjCXlPuCCTVXBZgYEWom9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3749
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_113601_646117_95E49C90 
X-CRM114-Status: UNSURE (   3.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [at91 patches 0/2] at91 patches
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch series is to create a fit images and add it in sdcard image
for at91 targets.  

Sandeep Sheriker M (2):
  at91:sama5: create fit image
  at91:sam9x: create sdcard images

 target/linux/at91/image/Makefile |  2 ++
 target/linux/at91/image/sam9x.mk | 44 ++++++++++++++++++++++++++++++++++++++--
 target/linux/at91/image/sama5.mk |  4 +++-
 3 files changed, 47 insertions(+), 3 deletions(-)

-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
