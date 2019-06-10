Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 164BF3B134
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Jun 2019 10:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z3J0U39v/Mi5ZWu87Tm1oKNdyb1DACIh1BN+iGTX94Y=; b=niELLRcLgMJM4T
	CmnYvhAkZjYVmhuW/bsPBoYUXANvYMYXxz2A4d4XH0ccK8Bu2VHgY2SpYL2M3UQv2m7RPFC4L4703
	xnjfYmc1OtRI8no8J+Lj0F/n/ZCxeDQWsozolL6b3PC+w/oMVE2NKLZPBCzaJF3gYZZsB1qS7soYJ
	XmKeV/M+pXDPhN+G6Hd/2qvTpd2K3rG5iru+epu5420VeOInSapZxLR39gsMR+ybLPyKP37E0lIe/
	2EKjgE2Q6lHk/pdSCoxOG+ir0+bEzvLv5/y5Q/l/Nez5JxOWnZo/P4SboCZcdPqwDYHQetoO6OLhz
	jWIMKrsW6JWgnJBphi/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFy8-0007O5-4d; Mon, 10 Jun 2019 08:47:56 +0000
Received: from [2a01:7c8:fff7:142:5054:ff:fe81:dadf] (helo=volatilesystems.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFxt-0007Ma-4D
 for openwrt-devel@lists.openwrt.org; Mon, 10 Jun 2019 08:47:44 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 5E65815F581; Mon, 10 Jun 2019 10:47:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1560156459;
 bh=jfROveWDlByVTr+gPWatQ1lYLlLX/LsA5UcyuJGbzWM=;
 h=From:To:Subject:Date:From;
 b=XvWBpt8W+GX8in674aSp79jsEBMMhHVyYaetTL/t6xtW/WfsgaIGD8AtyO6ZV8Wqc
 wOpNQyqdSMHs4s59X9H5skVrypK1ep2xf/L0PMH4CB/AOzg8dXDh/joyF8tB6fsw4x
 hk4VgmXzkkm1e13uDBvbO2/mVr7PiE9d+2rdvlHE=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 atalanta.volatilesystems.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU autolearn=ham autolearn_force=no version=3.4.2
Received: from okeanos.lan (213.219.168.236.adsl.dyn.edpnet.net
 [213.219.168.236])
 by volatilesystems.org (Postfix) with ESMTPSA id 9BBA015F569
 for <openwrt-devel@lists.openwrt.org>; Mon, 10 Jun 2019 10:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1560156458;
 bh=jfROveWDlByVTr+gPWatQ1lYLlLX/LsA5UcyuJGbzWM=;
 h=From:To:Subject:Date:From;
 b=B4zGsjNCDCn2GXwN6iYxcJboo7oHrUEiGNU+c/XS6W19qbGMnw0caP/WinTh5RzJJ
 O+wcAuYeWqcvZaoW9aLmc+4kjvDahO2MqegMkCRtJE72kU1rGoCpweQe4UmP2n5Zqo
 n5CLb0ms4Tn6mIZ5Gv6PsSfTM//v9wcEBxBiDYOw=
From: Stijn Segers <foss@volatilesystems.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 10 Jun 2019 10:42:49 +0200
Message-Id: <20190610084249.19422-1-foss@volatilesystems.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_014741_338315_7CE69F2C 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: [OpenWrt-Devel] [PATCH v2] curl: bump to 7.65.1
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

Curl 7.65.0 would break when trying to compile it without FTP support [1].
Bumping it to 7.65.1 fixes this. Full cURL changelog at [2].

[1] https://github.com/curl/curl/issues/3942
[2] https://curl.haxx.se/changes.html#7_65_1

Signed-off-by: Stijn Segers <foss@volatilesystems.org>
---
 package/network/utils/curl/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/utils/curl/Makefile b/package/network/utils/curl/Makefile
index c967af524b..bc83a400ac 100644
--- a/package/network/utils/curl/Makefile
+++ b/package/network/utils/curl/Makefile
@@ -8,7 +8,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=curl
-PKG_VERSION:=7.65.0
+PKG_VERSION:=7.65.1
 PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
@@ -16,7 +16,7 @@ PKG_SOURCE_URL:=https://dl.uxnr.de/mirror/curl/ \
 	https://curl.mirror.anstey.ca/ \
 	https://curl.askapache.com/download/ \
 	https://curl.haxx.se/download/
-PKG_HASH:=7766d263929404f693905b5e5222aa0f2bdf8c66ab4b8758f0c0820a42b966cd
+PKG_HASH:=f6c22074877f235aebc7c53057dbc7ee82358f8ae58bfb767e955c18c859a77a
 
 PKG_LICENSE:=MIT
 PKG_LICENSE_FILES:=COPYING
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
