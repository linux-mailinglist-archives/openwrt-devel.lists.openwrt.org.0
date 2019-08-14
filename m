Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C2F8C53B
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 02:43:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HxmIxy2XZ7Ot117iWutfHt8stnXIz8z15dsuIfStzMM=; b=qIkI2Pq+Wuptw6
	rQZQ+74mt+KMZnqdOKC70iHH8O7SlEMIPX9zS2Xk68mEcZ53eXcrkYf4yn8hTm96inRRSsDTxCvPp
	Pwf364SDDyy11nSW7N8yz3RPSOOHhaV8/zlPd+dV8/sDmOtFCMQBn4wUy/s4VV+cTlvw9kPJHPAVS
	za3+fOGUFnyh8YMuScCeDv+JMpAVEbMlg0FPXgC2Vgrxj/aJn/Eir4JbO2A2j3WvOJNsOmNsQG7TG
	5CIf93hSzfgeNIc8NzVTe9MtZdYjphv53DYv60k26miTc/1XdKRLLA1nBcQprvJl80yw3sS2zM79s
	v3BQ0YjvORcBTPt1Dl5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxhOK-0002U0-I0; Wed, 14 Aug 2019 00:43:52 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxhMq-0001kn-H7
 for openwrt-devel@lists.openwrt.org; Wed, 14 Aug 2019 00:42:22 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: NGHCoR4ED17Wh8Yc9DGS7qpQ5P+5LCQ8Y+4DtVsLQp3opD1h4XnuEE6ROFLMbDV+14AduI4AqI
 pszh8Upv3d9DQybwy0kq6zK/WzNodZ+gPaXT+3NJaHM6fG3GsLnLdrp5jz4MpVN3krBePI7aRP
 UzRvr19RbG0a3fdbp5ei1YdQmh3cr8wLl9XZxGjRKpPasfd6cXXxH0VA52l2LGGibSjF7RFU5Z
 7pmVPTcpLPszUb91PqvBKBHntDA7coycvaMxBQFCNwCaxp/1TUGbztfhZUWpsQgIKz4R867HNz
 W50=
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="43511733"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Aug 2019 17:42:16 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 13 Aug 2019 17:42:14 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 13 Aug 2019 17:42:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EcaWmzPhn0NvOns6id8TbGiAmFAJ8lH0RrrCmaMGTcukUzUi5NiALXaReOd3As/fBzNFJR5nZeHxKVLfryAea9Y+2ch1DGK/RafqX8vaywVDoEbtL2s0E21K66qVuYylW8OiSeGpUDXNKhodwQE8RFy3LQK1YyCbgKjsjli3JKHDvVHrY3In8LuUjp6aytnltuOal0bTnWuspBdeml0YvJGRs95jBo4sePb7SkH0Wb/hPJGXcBxUd3fllbBqYQhPpIr7OMiTeYfXVU9INHET7kdNTHR0IgN83t0zwhQKLuRzRY/zJB2l2EcUP3osWb2Sj4xtnAbahEqITvRKcxcOHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aYq+TywUMI7OYheBNuX+StJd3QhqzAHBPhXgi7uCXuQ=;
 b=NrR+q7ReilOm3pCfiQwXpt5mRTFIS466Nu+k54r0c9MHcBr0l4ZxgCVByRU6J97NoQVpqI7W/rH7Lx46R+oGO2VeMkp7hDCvTugBmwwruY+RdPYu3/NfSzg+S3aygi2NQJyV6/h1d3XgRXPTyQApNcXWCaCHjD6zb2ZX6wZkUDULj58EqMAxq1COefkcF0UrzJpaMU/pban01Pql1loBLj2rT1tsvmjNRjg36WT6UC6/ulmcdvl9gTuz4zq3t+/rweJSCVKX6G1+i/9dBsekow56mRGzKZC39aWl2V157SkYRFYdpG55LAzMfWU4d+zA1sN9TllaY8jXfwVVXUCk2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aYq+TywUMI7OYheBNuX+StJd3QhqzAHBPhXgi7uCXuQ=;
 b=oKI86EVyomd6vOIoPHo9mncPz/CRjtMx3yatudQwYpC0If1ZrjFopf/XIPQmvF//xVjdZLxHkYKjn89PVznpLxF0ZIa9fJUzDozKA/DgHYKeXLGyBXXuqhOLPOwt/MWAgW6A/U3/FQLZRecDS26xVYA6ooOQw8WNgNZ0H+FwmbM=
Received: from BYAPR11MB3157.namprd11.prod.outlook.com (20.177.126.222) by
 BYAPR11MB3367.namprd11.prod.outlook.com (20.177.186.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Wed, 14 Aug 2019 00:42:13 +0000
Received: from BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::90b:673b:26ef:3980]) by BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::90b:673b:26ef:3980%7]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 00:42:13 +0000
From: <Sandeep.Sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Thread-Topic: [at91][patch v3 02/11] uboot-at91:add at91sam9x5ek soc
Thread-Index: AQHVUjkcUpEDo4fHFE+tFkulq6lFhw==
Date: Wed, 14 Aug 2019 00:42:13 +0000
Message-ID: <1565743239-8712-3-git-send-email-sandeep.sheriker@microchip.com>
References: <1565743239-8712-1-git-send-email-sandeep.sheriker@microchip.com>
In-Reply-To: <1565743239-8712-1-git-send-email-sandeep.sheriker@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0033.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::46) To BYAPR11MB3157.namprd11.prod.outlook.com
 (2603:10b6:a03:75::30)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [198.175.253.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 51d47c0f-f9b5-4ff8-9bb7-08d720503f5c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR11MB3367; 
x-ms-traffictypediagnostic: BYAPR11MB3367:
x-microsoft-antispam-prvs: <BYAPR11MB336777DA1807D061FD35FCB982AD0@BYAPR11MB3367.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:73;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(39860400002)(136003)(366004)(189003)(199004)(5640700003)(6916009)(2501003)(7736002)(52116002)(305945005)(6436002)(5660300002)(53936002)(81156014)(8676002)(6486002)(76176011)(81166006)(66066001)(86362001)(2351001)(36756003)(8936002)(3846002)(66476007)(66556008)(478600001)(66446008)(64756008)(66946007)(256004)(11346002)(50226002)(186003)(6116002)(446003)(25786009)(6506007)(386003)(4744005)(71190400001)(71200400001)(2616005)(102836004)(6512007)(476003)(26005)(99286004)(14454004)(2906002)(486006)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3367;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tx8LHfDG1QwsXY1+nTWrexP3RB8ri7yUVgGA1PZszsB3LF37iXbuSuy6ykFBhP/cGKgl5EEixFQ9MUk/L2xzf+Z/MAh79V3YDyIprcY6b7v7SeIYE2aP+hJhPD7h0w/Dt4M6cs5J5ORRt40ISkCjFdo/ScALu74wKuTAkYccAa3Roj8y3/7g/iPVQ27CqFmbeNj7N6Eq+KDj8l8V3IFYlh8IN3AewgLS5ng9JcoSiPP3lHNFYBsKaWh7hOl4tdgr8wkwLAEr3cTveJpBYbErDhagoreBNvS2Xlihjw7XmMi/RoKCKIgn6EhlEAcC0cZHNn06bNhGxUtow9vc7U637duckHRax1tRPyhn070OcQlqTt1WuwBHAfWDS25XWQvGe2i8lOuZ+Mj5S1glv/gDzVQApOUQa2lWarQPF3Q+8QI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 51d47c0f-f9b5-4ff8-9bb7-08d720503f5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 00:42:13.0269 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PL5WV4dgVS3moKoyXRsH0DrzBGd5ZCle0sEX8WYqYN5w072hHF+4PRzzsgiMkifazr9iqvcYeTjoxCRgdSxQrNMWaW+5jkKYdNFW7C7rkqmqrnfRyA2JsikzibdFxn/ZsP7atozHnPELbcq/hmwkKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3367
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_174220_769262_924268A9 
X-CRM114-Status: UNSURE (   5.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [at91][patch v3 02/11] uboot-at91:add at91sam9x5ek
 soc
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

add support to build u-boot binaries for at91sam9x5ek socs.

Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 package/boot/uboot-at91/Makefile | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/package/boot/uboot-at91/Makefile b/package/boot/uboot-at91/Makefile
index 15a26be..90f1a3b 100644
--- a/package/boot/uboot-at91/Makefile
+++ b/package/boot/uboot-at91/Makefile
@@ -38,6 +38,14 @@ define U-Boot/at91sam9x5ek_nandflash
 				 at91sam9x35ek
 endef
 
+define U-Boot/at91sam9x5ek_mmc
+  NAME:=AT91SAM9X5-EK board (SDcard)
+  BUILD_SUBTARGET:=sam9x
+  BUILD_DEVICES:=at91sam9g15ek at91sam9g25ek \
+                 at91sam9g35ek at91sam9x25ek \
+				 at91sam9x35ek
+endef
+
 define U-Boot/sama5d3_xplained_nandflash
   NAME:=SAMA5D3 Xplained board (NandFlash)
   BUILD_SUBTARGET:=sama5
@@ -107,6 +115,7 @@ endef
 UBOOT_TARGETS := \
 	at91sam9m10g45ek_nandflash \
 	at91sam9x5ek_nandflash \
+	at91sam9x5ek_mmc \
 	sama5d3_xplained_nandflash \
 	sama5d3_xplained_mmc \
 	sama5d2_xplained_mmc \
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
