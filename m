Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67624A6D6E
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 18:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YEn/Org2eJwbcz9BTIrf8nOwfzGduX/Q9+xTD+t/3OM=; b=oOu55thqEhBfh1
	AP+NVDGEK3wsKF2A9JYAzfiFo60BXHuJ8WwKyKFL+mhJupzQviba2mDJyp/2j3Uluy8eZ/ZMPLuNc
	C2JGs6JFcgwObH+aTpDeyNWv4sZBIlPLJB6RUp+0UlpWlEVOFpvFCY4cRYcwbj8lfUbPy6YFXNxuN
	byjQFrdAD09TxCovOwY3Ckmn1oBXw6DoLT4V+UnczeHpQbzxrN20uE7Kj+cGWzQXSJo3SUjKf9NxP
	qMLyvI6sgbUhVi2rf9ESh+5ULscWd80skC8ecWo3yxRItLe/LtMVS5S77YhyNzpupm7it/BCctLPQ
	NFcBAUM+Sg0s/UKuqHww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5BEV-0000gv-9p; Tue, 03 Sep 2019 16:00:39 +0000
Received: from mail-oln040092253050.outbound.protection.outlook.com
 ([40.92.253.50] helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5BEA-0000gI-V8
 for openwrt-devel@lists.openwrt.org; Tue, 03 Sep 2019 16:00:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dbeRPtNNRF2CbnERX9OkerIEqfgx06TBxzDGxmYLmzZBdD7cLZ6NaiqxB3jSTFn4Bsijd1czJtyuD00dyJw57xPGc1IX3ZJF06K+/Jnq/9puQ6PpFQNVDMyJ02ozMVJzqBif1pYkTmhAPrD6QeKEIiYLp6k5vA5olhHPkpCgLWSAp90AzVTG+IEasH/59hSeg9fHtJbfVoPBRgbW7/HDLlV0IZ3YY2ohhdWBtYGCbTXSOw4u96gcO36n8lpGeJEqVRVPzFzawD0eSHGi7Mk1wYDyVM3kgpbScMXE8MZf2O1VbCXwtLiJPkMW3v3cyZOTqtHdJfJ725UtALd3w0sjmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vQkM11ild5XZyV1ERtbt30m/S6/J9+4OxgUSlzjvplc=;
 b=EuBnEBwM+x0yZXWvGC34uJro9Pi2y29jFkyO7kYEu0brQAt5raf7mTiisT/xUT3TsF85jsz/D0gEpEaBiSOGGY1sHWwm6jfBgY+cry1UkEMkLrot+ED3OXwQYC1WuySlKlFWW1XtnNwL05EB1DJRydOjm7ZrjkcODJ52dftMKijvytPreWSRlitGqbHW+RhXjXdk/CUmhcr4Q6i584TSkrn5zHuSl3nk2HuxGRfPF2ykmfoOdqcF6QelPNAzHl2/SJ+ysYY4CiCuLSdi6HQ9QM0IhdIN8rZbzIJo+DAFYOQYSN4ezip0TtYhCGshIob90qygVV1gAqwlE8ZQMY//QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=msn.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vQkM11ild5XZyV1ERtbt30m/S6/J9+4OxgUSlzjvplc=;
 b=rEn4SmvIpIFjQ4x/JENGzRDiagaXaeaFZkfGZkJNM4coHRN5ZZy05urGSCL7s8gTev7bn7zlMNQh1igQ0UqnnnasVSglzuGZB4QefJfvLB6Y+56SfgeUroTsb3x8B+HAmb04ibQ81eN7ucroJ5h9gPJQOw6XdQfiv8DFLH3DUef+r6TljrhD8/tyRcLCr5JG2s7WuB2hwSnZjpt811V2AH2tPz0lr0CFx2aC7uJCgDdf0M5fP0EETxxeThugYZxw89HnNfHd7chHf/1W1AwQMEpUa6ZSnSprzjFHmIw3xIspo2+Wk0t4HDtKxai3tZyoPfSh83mIjakSYkJgBa+9yQ==
Received: from HK2APC01FT036.eop-APC01.prod.protection.outlook.com
 (10.152.248.60) by HK2APC01HT158.eop-APC01.prod.protection.outlook.com
 (10.152.249.39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2220.16; Tue, 3 Sep
 2019 16:00:10 +0000
Received: from HK0PR02MB3153.apcprd02.prod.outlook.com (10.152.248.57) by
 HK2APC01FT036.mail.protection.outlook.com (10.152.249.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2220.16 via Frontend Transport; Tue, 3 Sep 2019 16:00:10 +0000
Received: from HK0PR02MB3153.apcprd02.prod.outlook.com
 ([fe80::dda1:fda6:327f:273c]) by HK0PR02MB3153.apcprd02.prod.outlook.com
 ([fe80::dda1:fda6:327f:273c%3]) with mapi id 15.20.2220.022; Tue, 3 Sep 2019
 16:00:10 +0000
From: "z @" <haig8@msn.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCH] fstools: fix libblkid-tiny ntfs uuid detection
Thread-Index: AQHVYnB3n5uuznxHCEGF3sSaW0AMtg==
Date: Tue, 3 Sep 2019 16:00:09 +0000
Message-ID: <HK0PR02MB3153A515077098D6209D1F4FEEB90@HK0PR02MB3153.apcprd02.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:C71B98771BDB3AD0D434B5550A8994C6E5B1AAA4E7AC81BB430A2294C6F171C6;
 UpperCasedChecksum:BA8BB325B3471C34735376DD203DD702EDB17185AE0B58064157B2663BDF6CFF;
 SizeAsReceived:6621; Count:41
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [p0aLjXBN9m1X9yxokS3jv0wSnOKss16mVL+hYEf9Yzg=]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:HK2APC01HT158; 
x-ms-traffictypediagnostic: HK2APC01HT158:
x-microsoft-antispam-message-info: nL8gRvm2PjBILjd63UKfls7V1jEiWky/qdcI1c5NwfZyK5jt8O1eejbNrfoCgHPysflqnI/ynaypns2iVBZ61RjwgZl9bTU67smChvFCIoWWatXiHK9D3HwnQ4Nj9bGmQU5/6KDePjyrd7ytj7pOrCKZWYNDo7Sm9HV4TZuK/nA3kDYA/Qw5p1CuzTISW8gg
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 27daf193-3869-47f0-ab62-08d73087cc3b
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 16:00:09.9876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_090019_096829_D1DF9C73 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.253.50 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (haig8[at]msn.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (haig8[at]msn.com)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] fstools: fix libblkid-tiny ntfs uuid
 detection
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

detect ntfs uuid fails because blkid_probe_get_buffer override memory of buf,
so move blkid_probe_sprintf_uuid to before blkid_probe_get_buffer

Signed-off-by: Haiqiang Xu <haig8@msn.com>
---
 libblkid-tiny/ntfs.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/libblkid-tiny/ntfs.c b/libblkid-tiny/ntfs.c
index 93c1d88..51252ea 100644
--- a/libblkid-tiny/ntfs.c
+++ b/libblkid-tiny/ntfs.c
@@ -158,6 +158,11 @@ static int probe_ntfs(blkid_probe pr, const struct blkid_idmag *mag)
 			sectors_per_cluster, nr_clusters,
 			off));
 
+	blkid_probe_sprintf_uuid(pr,
+			(unsigned char *) &ns->volume_serial,
+			sizeof(ns->volume_serial),
+			"%016" PRIX64, le64_to_cpu(ns->volume_serial));
+
 	buf_mft = blkid_probe_get_buffer(pr, off, mft_record_size);
 	if (!buf_mft)
 		return errno ? -errno : 1;
@@ -206,10 +211,6 @@ static int probe_ntfs(blkid_probe pr, const struct blkid_idmag *mag)
 	}
 #endif
 
-	blkid_probe_sprintf_uuid(pr,
-			(unsigned char *) &ns->volume_serial,
-			sizeof(ns->volume_serial),
-			"%016" PRIX64, le64_to_cpu(ns->volume_serial));
 	return 0;
 }
 
-- 
2.22.0
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
