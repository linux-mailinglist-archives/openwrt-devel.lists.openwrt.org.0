Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B885411E5BA
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 15:38:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1Xg9F4G5TGElLVz3Wce7adxLVLWQBR+Q9D8OxSmxOoc=; b=RmUNbzDcwaRgZ9
	CtONKatB5fqg+BzGcyF+nbmlcXGYS35oMdqHem6qF77jvvAb03yvk6Bf2tXz8otL0Q4ENoWbpC1WT
	6v9n5Voxi31AsenN8TRX8yKjqxYfvKVdLVHywdDija0nXAlzey9IgAKY1poOzA4fvlwyaQgYblhYN
	liZ1xcT7VTJZ8sbOWRoArCBl2rzV8Bt2o+uwpORSGCKDo/p1e2lQ+Lt5uLMxKewg+LtHSNpReV4En
	eAyfS1cZXAjLOrnOeyl6Z7uU8gW2DthWFbzqinFOsLlSkZV/qS+I4rgIEdkSNCvW2YGfuXBGdj1sA
	w+GCS6isHmPlMOlSqBkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifm5V-000348-7K; Fri, 13 Dec 2019 14:38:37 +0000
Received: from mail-ve1eur01on072e.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::72e]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifm5O-00033j-Tv
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 14:38:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ay/9+rGW8bSabtyF8yCZ5rpg+7N5ZgxBX2NUUa4D4Hf2XIQ7xArLp7HE9XGYixGdydtJQpoFE2EOPcf8C9JtV0tr1Rv4iOUzqTI3OlUaixyeCYoyh44ysrS2o9MEPOhi5NCuu49TR2UYonz0GS691ZlLnEP2gE9XrUCmiy+kPCvqxtqCjopfll6Uw59mTImAm8IWxDtWVeg2Nzi0748y0wF3PUOCCbPlP0zwqhmfSYyhR4H3Zr1DXLg7F0eIsKGHe7Vy+kpxUqDRnGq2uFVN8oC+VCwES/gxMxwnK2CpS2aOVTONViFbV0/MQUesEbDziW2GTtlkxwtD1gg1GjC/lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=obk3W0UdcAXw/JtBjdPNDmlYmGCxM+YUuWDP8LFqGWE=;
 b=SA+87IJ8HcaYlKPPpNtZRQTaYY7ah+c2FpqVnhjmaZDJE9KanjsUW0rASiayq6eAVzg/F5R8XiPzg4QtPNoBlG6G+3NF73t09qwbzLdLpjmw/b6PfUtoAeJZD7+I3Km2F3eXccL2am77eAL/CsRo3J8RFVwkp9oetZlvedibb2PAeeizxkaOkofssRNeh9y8eTm8BWr9LQt9QXBpY1DxCcYTv+4i9T+OaXrb2wKEU4S8IqqychO248G19rgCamM0qFRMphyqaRCTDNZj0TOP0CjxKJ20+FxWvd62jm7gnUuRt7+Dqne7jtu89oNlDh3gtp4AVXQ0z8U0S3zrNPtpXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=etactica.com; dmarc=pass action=none header.from=etactica.com;
 dkim=pass header.d=etactica.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eTactica.onmicrosoft.com; s=selector2-eTactica-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=obk3W0UdcAXw/JtBjdPNDmlYmGCxM+YUuWDP8LFqGWE=;
 b=Ij254oJiNlccOPN82Su5Ew6w40owtMVmvablnaPThR+Zpbe4SrhYuvt7ZlLUzhzCbwKMUkmjSP0GrBA5q88ITE4/sesuRQnUkjgxJYdcV+p/DJmGQquOJ68cTkl+6XcxqTPzFMzz07qMfPQ+gl3+mOcEFeDcUoT4T0crjqqMEas=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=karlp@etactica.com; 
Received: from AM0PR07MB5953.eurprd07.prod.outlook.com (20.178.82.92) by
 AM0PR07MB4291.eurprd07.prod.outlook.com (52.133.60.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.4; Fri, 13 Dec 2019 14:38:25 +0000
Received: from AM0PR07MB5953.eurprd07.prod.outlook.com
 ([fe80::e9c5:aef3:46d5:1e56]) by AM0PR07MB5953.eurprd07.prod.outlook.com
 ([fe80::e9c5:aef3:46d5:1e56%7]) with mapi id 15.20.2538.017; Fri, 13 Dec 2019
 14:38:25 +0000
From: Karl Palsson <karlp@etactica.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Dec 2019 14:38:14 +0000
Message-Id: <20191213143814.25083-1-karlp@etactica.com>
X-Mailer: git-send-email 2.21.0
X-ClientProxiedBy: LO2P265CA0279.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a1::27) To AM0PR07MB5953.eurprd07.prod.outlook.com
 (2603:10a6:208:108::28)
MIME-Version: 1.0
Received: from localhost.localdomain (213.181.112.179) by
 LO2P265CA0279.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:a1::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Fri, 13 Dec 2019 14:38:25 +0000
X-Mailer: git-send-email 2.21.0
X-Originating-IP: [213.181.112.179]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c56b33d9-40da-41b5-4fbf-08d77fda1c6b
X-MS-TrafficTypeDiagnostic: AM0PR07MB4291:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR07MB429143CB74FA99E9E7B88052DD540@AM0PR07MB4291.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-Forefront-PRVS: 0250B840C1
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(346002)(136003)(396003)(39830400003)(376002)(366004)(189003)(199004)(6486002)(1076003)(81156014)(107886003)(66556008)(66476007)(186003)(4326008)(81166006)(26005)(16526019)(86362001)(66946007)(6666004)(36756003)(8936002)(2616005)(5660300002)(8676002)(508600001)(6916009)(69590400006)(956004)(316002)(6512007)(4744005)(52116002)(2906002)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR07MB4291;
 H:AM0PR07MB5953.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: etactica.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M1zc+XGsWdiKT3LvpVVPTVH3/a5HWBkZZ4T38hM2KxYe/88sl2tloWFrxPrGFswMMZdUV1EN1p4jkOIAXR++moIVSMFhJ8hsUkxt/m7CPyd2NqoIZzlHU6jyQfynYJPFD+BST5uvyQfRgH/rwQXvZcc/qudfCiMe4txD4gkgOJT8mIU34dvm0MAoKbwq2/OR5LTRcwGtXFzN+Ofqe5rKoutm5r8YfqJpyFy6+L2TyYAfjE2g4d9ONvtJawaMABaaIXUY5eMOC1zLsLwlLAaRgsJPuglvU/xKg3/CFDImBQDUAHUTIoRVsFfeEQQsvhYtEgl/tuWAL7f5fhDR1StvnqLWlPTEq81jshOErdAyyVElzuri8MyMALXQRQX4hRMjtEXjmzTu9aFddtS7P4C6J+OBSMusWJTLxpD1/bfHTdY8Mrg3awrE0c+hTQToA2dm4hFjXnrC0TbdVXK89Yx7drltv15XRwLZd1FI8Jw98dh59A58fDj+YVqO7NeCONoi
X-OriginatorOrg: etactica.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c56b33d9-40da-41b5-4fbf-08d77fda1c6b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2019 14:38:25.4266 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e3621586-558f-4e21-92a9-26df2c484dae
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TciFh/7RQPyuqvOrJwYkk7IgNLRJJw0nzUFyqsfDMWezapG58Vqhxg/zqqKolqv58eJWZrk1gULe+9Q7yYM0KQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR07MB4291
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_063831_024984_9EB9D87C 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:72e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
Subject: [OpenWrt-Devel] [PATCH] uboot-envtools: ath79: add etactica eg200
 support
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
Cc: Karl Palsson <karlp@etactica.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Was inadvertantly missed from the inital forward port from ar71xx to
ath79.

Fixes: 1588114cf2 ath79: add etactica-eg200 support

Signed-off-by: Karl Palsson <karlp@etactica.com>
---
 package/boot/uboot-envtools/files/ath79 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/package/boot/uboot-envtools/files/ath79 b/package/boot/uboot-envtools/files/ath79
index 1499aa19a2..f956cf4ed4 100644
--- a/package/boot/uboot-envtools/files/ath79
+++ b/package/boot/uboot-envtools/files/ath79
@@ -16,6 +16,7 @@ case "$board" in
 alfa-network,ap121f|\
 buffalo,bhr-4grv2|\
 engenius,ecb1750|\
+etactica,eg200|\
 glinet,gl-ar300m-lite|\
 glinet,gl-ar300m-nand|\
 glinet,gl-ar300m-nor|\
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
