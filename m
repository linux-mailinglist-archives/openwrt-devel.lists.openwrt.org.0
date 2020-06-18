Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AAC1FEEF4
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jun 2020 11:50:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g4AGEUWxmqcPFab1d675IJgftkghk649/bTsoH+bDkw=; b=mBVJsBaxOrnp4W
	g4SIneLiA7XG10f2mEajLTvIfGQNvGiNMIwu9HYHoNxBe4bcGFxU1WS2575gW2j9oPJB2FzwBt+Xx
	oyEuJ6csI61n4eTxGAGSwO2SZGUJarH+7x4YszhmY37Z+auu+JdRBKS7qFO4FYrahUwih95/mlmzS
	soUkxCwY7y2A+ZT2VXGMvGDRiEDFxs8El/sCG6F2EOhK9mq4qXdROESz6KwFyV2HOPvYUJJqMXwl+
	Z0tOabI6vMVV7zS6Hpj7c4z24QRDV0x0dMNvUd6XJ8F94rAPDpsHkwr3nPYIQRt6VC9KhdesJ0hd7
	Su+uZtHeAgUbKCQbUUXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlrBD-0002Ft-WF; Thu, 18 Jun 2020 09:49:56 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlrB5-0002FW-Lv
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jun 2020 09:49:49 +0000
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mf0FY-1jEQEW0Osc-00gXIX; Thu, 18 Jun 2020 11:49:42 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 18 Jun 2020 11:48:58 +0200
Message-Id: <20200618094858.1929-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:cghsL6NSj5rR/MlpH7VclYdGfnC740gwh0nD2I5jniJBTqrLPfE
 qMSnuamN9itz8VuNKMF+Iefm1lZIBi5jFuYX2On/dBzHE9ULn3xnei3joGoQBsAljrxQFhl
 Lgndk/3rOxJ1Y72+SLa15bqRstdno0ATCJTcZJ2BgizdYx0BKAU2ErhSRg6E4gF02DgzVEm
 mC0rVZgHLIi+GAevhWyDQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sL4fanB3LIs=:Pop4srujRoX6eE6WmtaOlz
 Ms1L4GJE/GcTs5H9dYGDGLK2TFrzFGpYqszC6w4wtHbH/WUbk1G63CtGpsxRmVuy4ke2o+UBu
 fegHMdFTCLDUlsQ45T33gchZDPoWpg0qmK0Z+xDUv7QkhmnCA3TjXTFr5L+g3xhZIC8bOhgZq
 ME8XV+taQAqNE7foAp9rRrPTiST98nrU8P1MTJ70og23HxDAzKIb20K3elON4pnGM0A1rovHu
 A4ixil8lOiBgqHpNX2w4f9CGY/WATLIAJJdF6xKdWkgjzNTqwRxRYy2A4wN+zB8jqtuVXzKxu
 t93SDhE59o8hMgU5bXk16TM3j/hgazQHQ9X9zIspOHZ1oelvhG60GNTsIzkE8YDgCWYOk6j9E
 6qjiIA9Ogd10W2p+MyP9RV9k6z8qZccXJPMhtOJMY5rT0UalH9Axcdo7cmBYqOAxLja82wNrX
 5lcR69cJhoWNU60BfjYs9rNWfleICxV0ZMxTRFxNniUqhRat0lCzZM7dXvc1mK/G55e9G1fpt
 rhPYYqwVplaWIrBv9LiuNLIXHLypPWG87qB7C2pi+NUECAaLFzKRaFAwHoNPVh8fpKFrp2w19
 oZfP1vWOLxFxCPYfCQ0TxdAtmOchc1KCSyvDgDV0KaWkOXdk9L2MbShKjsW2gSUv0XwEITmdx
 1OiFTcTmXgy5CUDNmvThzPUwk+hWDuxPGTmsQl2RBIuOJy5XEKTxWPAxkBnVumqNSLqlZ4MsW
 bvRhM5Q/nkKEfuD6EoO1gIlhECxUa3LXKhj/7Syq6KdipuAre3/UPm3Amj/3XkZBANaP4Vg6e
 upB5H5D+jY33yXBpq67a1KG5oW9PLfttEiZrp+naBx6BROZkF/or8dqsQoAwlzdHBoEVxIc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_024948_012955_5392CBD5 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH] lantiq: fritz7312: set maximum speed to 100
 mbit on 5.4
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
Cc: Alexander Couzens <lynxis@fe80.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The fritz 7312 does not support 1000 gbit. Advertising it makes it
worse. Some NIC will change to 1000 gibt and turn off and on again for
ever.

The previous patch in 36f628910b8b was only applied to the 4.19 file.

Cc: Alexander Couzens <lynxis@fe80.eu>
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../files-5.4/arch/mips/boot/dts/lantiq/ar9_avm_fritz7312.dts    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/lantiq/files-5.4/arch/mips/boot/dts/lantiq/ar9_avm_fritz7312.dts b/target/linux/lantiq/files-5.4/arch/mips/boot/dts/lantiq/ar9_avm_fritz7312.dts
index aa825abd9f..0f635127f8 100644
--- a/target/linux/lantiq/files-5.4/arch/mips/boot/dts/lantiq/ar9_avm_fritz7312.dts
+++ b/target/linux/lantiq/files-5.4/arch/mips/boot/dts/lantiq/ar9_avm_fritz7312.dts
@@ -108,6 +108,7 @@
 		phy0: ethernet-phy@0 {
 			reg = <0>;
 			reset-gpios = <&gpio 34 GPIO_ACTIVE_LOW>;
+			max-speed = <100>;
 		};
 	};
 };
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
