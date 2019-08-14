Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F53D8DF97
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 23:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClrdwCVI9yWMbyHLXqSuFHaI0eW0LZsq3Em5mXucQ5U=; b=X5l4EVampk5Skk
	5NvsZTDnpvHSMEvjReH5ptid98oBX1d1f62Y5CE7chBkxqYGiiXfgAkIxMPoCsvkwoH4AAuhVEsmR
	RonO6HImzY1EH7sb9yK96ZQjT6Y6/qhX4mhNhGJ3vd4W7n0I0iFp66rWuhy9s0JDHnDZf1dQ+T7v+
	emPuf4zfqSnMg8zp0IxNQcBqms8k3FXQfp+AdLq3eT4SvnIXKf37UvqvJRXn4LheGK36hLVKf3+en
	yuZe1R85P1FJcubx/TGki9Tl6isIrpseIjnNIoDwWumpkKBGi4JQwBj9zz4I5WZKWK4t/mVQ7YvRM
	VRyqb0jAyka8MTaBPchg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy0Q9-0000Qr-Vg; Wed, 14 Aug 2019 21:03:02 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy0Pm-0000EU-NP
 for openwrt-devel@lists.openwrt.org; Wed, 14 Aug 2019 21:02:40 +0000
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
IronPort-SDR: dqVk8vknHjaw1CWpGdapPOJGkl1mvHnd38LqDYy1VMqpe/cTaT4wwomeZvemtJqYMY3Uj8/zvL
 jYsuE6Bs8n59UFw2+mAFJ1lBmSjX9BSAMQ5P5mQgLJdi4Z0YlQD5tZ9u6Ywg4OXKX6zLz4yPMc
 z7bk9gwfbj/2NrMzyr1RJhyMIMeYu4nWhFPgffXO0s+rnEnU0jRFsgQ/HrIwSYPfDdn6BdfUqW
 DeEoP+L/tCFeC/RPJNlfpBtpzttZdiYEjb5VeUdGU/LUr2P/hyo9bz0rcOmR2b56P5eiOT3GOF
 Px4=
X-IronPort-AV: E=Sophos;i="5.64,386,1559545200"; d="scan'208";a="46579586"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Aug 2019 14:02:28 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 14 Aug 2019 14:02:28 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 14 Aug 2019 14:02:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fqz4+vjC1HNRrBAbsgGlDVAzJQijt20l1QprV/OnTaIkDEq8vIxBjujnG0UWBAUtBfGg1SrzyXKX8Ew4RiiO4wGNX7QYR95WNGC756m85qN289FGBPzcH3915hRFX8qaT0uNxZbCmFlp/Mc0UAe7z3dbZQF3A6KmE+Uexj5+Ni/bIVUdlcgTaUf8zW6Iqmz9uvLDGOMVBD8IhaGLq6Tf0yVdpw0vRl4rY6e/viG3kMzZ5Ki6C9660+ecvfgzboWJ2ZNdaTto7N2Wdtc0p7YDh6c76WRWmAsWAeX0Kvrik+7oSRATgb8t3GEw3VBaqlCF9rrJm6fcPONttfM7xH+VOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=usWsGGuxgdkLajSswUX/aEBBV4/Jd6T+p28XKfwQIE8=;
 b=QjVIPoB8FD6uhFnqE0RVdtGaO+SWJQG3PUeWT2ksEIoDjSLMmZKb+i7arSOBAYXYiD5wLeIaIZKqbqzW5Wellf7y/D/BarePKZFqW2D8QDg3pfBIZFsDyCu53ZQZGGofqyIzYIopu8EAbAXFKbkUWIRmuwruSMefxaRSDD2Z3mdLkHLt8E1a/T2JFJLml5+lnBKT9gaUFffgIK/QbhIQpFpkRtVg8Pn8a2ZuW39QBaTDwhtHQknfmdyrj5U8Yvoczpxgb8ndiOd27uKKOorJ3cFJeVzV69IblVNYn50yDAnujLXoRZXo8flkZJmWIIqEqEwSHhqRMvwy68JvyI/YOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=usWsGGuxgdkLajSswUX/aEBBV4/Jd6T+p28XKfwQIE8=;
 b=ldtW3sY3ioWjJKIcQsVNv4+ksLonBKCH24+5pJ11TE2gNj16+aTCQ9fmUlEc4+uMoW9F8eWMnPHp+pJPdwmsxqnBlelozwqM/iTYkm27rA8U11QIBOFcTdMd1PKzer6ouEwxdqZqXs6nSlZsePTB2bZ+vRQfSLSKtL/XJZo5w8g=
Received: from BYAPR11MB3157.namprd11.prod.outlook.com (20.177.126.222) by
 BYAPR11MB2614.namprd11.prod.outlook.com (52.135.227.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Wed, 14 Aug 2019 21:02:18 +0000
Received: from BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::90b:673b:26ef:3980]) by BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::90b:673b:26ef:3980%7]) with mapi id 15.20.2157.022; Wed, 14 Aug 2019
 21:02:18 +0000
From: <Sandeep.Sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Thread-Topic: [at91][patch v3 13/13] at91/image/sama5.mk: check for
 sama5d4_xplained device
Thread-Index: AQHVUuOOJn7FRZZc1EiKF6VlRqfAsw==
Date: Wed, 14 Aug 2019 21:02:17 +0000
Message-ID: <1565816443-10924-2-git-send-email-sandeep.sheriker@microchip.com>
References: <1565816443-10924-1-git-send-email-sandeep.sheriker@microchip.com>
In-Reply-To: <1565816443-10924-1-git-send-email-sandeep.sheriker@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MW2PR16CA0022.namprd16.prod.outlook.com (2603:10b6:907::35)
 To BYAPR11MB3157.namprd11.prod.outlook.com
 (2603:10b6:a03:75::30)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [198.175.253.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3e97f3cf-2497-4fd6-d672-08d720fab098
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR11MB2614; 
x-ms-traffictypediagnostic: BYAPR11MB2614:
x-microsoft-antispam-prvs: <BYAPR11MB26147BEEC829AF222664C76B82AD0@BYAPR11MB2614.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:216;
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(376002)(346002)(39860400002)(136003)(199004)(189003)(386003)(6916009)(76176011)(66476007)(8936002)(52116002)(476003)(5660300002)(316002)(66066001)(486006)(2616005)(6436002)(446003)(11346002)(6486002)(256004)(7736002)(99286004)(102836004)(6506007)(305945005)(186003)(71190400001)(71200400001)(36756003)(26005)(53936002)(2906002)(2501003)(6512007)(25786009)(50226002)(66556008)(86362001)(81166006)(81156014)(14454004)(478600001)(2351001)(8676002)(66446008)(64756008)(6116002)(3846002)(5640700003)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB2614;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TkoLl0jbh0rL00UVTGpaK1ScxsEnqSxiuBaAWuhMqUBs7dsyb6Lp5N/cbwPPvhw6F8kEIQQHbjFExqg2XyrKuYqALHvzJkz/+yqtLH0vbDAePxwwOzA1xdKhlUiOIcwxDCo6UtrWcoKfqbWAvabWlSPP5oILYTIDhhxE9Z+8BQztNGAPdJAjJnwUHgu9/yUp3v9JXRcwj6eYP4Uc7wreOY+FVVCBC5NlWSI0D33+A3Bijosf7D6+wE+M7YiUzoAENRO3YUsKi4Ja3P3518FiupqoVzpjKSTpolxxp3e/8Qqoend7kSkXVvtYp1o3GKrnhtKSOErFI6keaJiSwjL3JuEnoslJKcbRMZY0OdEZjzQrVuJHLLNFIlOLVDLN9HXyxNyBg8WSAkQS2xfH2ZuDJW9ILuA+m0oxBGEf1u9gPWM=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e97f3cf-2497-4fd6-d672-08d720fab098
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2019 21:02:17.8990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: igzbIMTchyh06dvaaDIQGKiPqSGZfaB+2DSDq8YKmFZMCyoTGZ57b+lIsoDj6XodljdInAHn/B4exRjfHwLrf0v53zi8crjX71lJjNfUioTr8BJGLAuGnvsCuu49+olZd7CrwB/LZLQWkTTpeaOnPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2614
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_140238_872169_737D2B77 
X-CRM114-Status: UNSURE (   5.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [at91][patch v3 13/13] at91/image/sama5.mk: check
 for sama5d4_xplained device
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

check for sama5d4_xplained device while copying at91bootstrap binary
to sdcard image.

Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 target/linux/at91/image/sama5.mk | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/target/linux/at91/image/sama5.mk b/target/linux/at91/image/sama5.mk
index a9370b1..1e4366c 100644
--- a/target/linux/at91/image/sama5.mk
+++ b/target/linux/at91/image/sama5.mk
@@ -25,9 +25,13 @@ define Build/at91-sdcard
       mcopy -i $@.boot \
           $(BIN_DIR)/u-boot-$(DEVICE_NAME:at91-%=%)_mmc/u-boot.bin \
           ::u-boot.bin
-      mcopy -i $@.boot \
-          $(BIN_DIR)/at91bootstrap-$(DEVICE_NAME:at91-%=%)sd_uboot/at91bootstrap.bin \
-          ::BOOT.bin)
+      $(if $(findstring sama5d4_xplained, $@), \
+          mcopy -i $@.boot \
+              $(BIN_DIR)/at91bootstrap-$(DEVICE_NAME:at91-%=%)sd_uboot_secure/at91bootstrap.bin \
+              ::BOOT.bin,
+          mcopy -i $@.boot \
+              $(BIN_DIR)/at91bootstrap-$(DEVICE_NAME:at91-%=%)sd_uboot/at91bootstrap.bin \
+              ::BOOT.bin))
 
   $(CP) uboot-env.txt $@-uboot-env.txt
   sed -i '2d;3d' $@-uboot-env.txt
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
