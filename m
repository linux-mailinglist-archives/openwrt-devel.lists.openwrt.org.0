Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E483B0B1
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Jun 2019 10:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T8HXDlRPOSrm6GwS2BtJ9dXGJrJqUEPxRL2s5pAPYcw=; b=DTYW1LiW9UgNbX
	7UxYutBewCXyjC3l5dwnhIO6F3+/jpNJEQr/TUdNP9+ersbeWHZ1jepL8Sb20xNyb5xWDyjZSVJa4
	z0Hzcyi9JY4Ow+Tk6xLb8esswt0oepJiShGQNIDQddBCaYyKlpdUJP7GMh+BFbP1GVWhqB9N8PtSC
	5l3UO6Qqj2XV7XApOFVdcZ0i6jREo1KRPlcoyQzUT0o2YOaTm4w8MRLRl6T4cd6zKwuOoa+ER4TEP
	jDfpcD79m6aUEXA5qx+o5xwmC1Jp3SfYm8goVqMIhEb7bPtQpRdUEyM6nytJP8QjkbLCcsrqj3EA+
	nkWif0fWVEHPmyEsXpOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFa7-0003Fq-9b; Mon, 10 Jun 2019 08:23:07 +0000
Received: from volatilesystems.org ([136.144.153.139])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFXI-0008Ol-8d
 for openwrt-devel@lists.openwrt.org; Mon, 10 Jun 2019 08:20:14 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 1F10B15F581; Mon, 10 Jun 2019 10:20:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1560154806;
 bh=AZkraaizfm2vqk60zhwFd3MkuYhMzm6SrMXs5CbRabk=;
 h=From:To:Subject:Date:From;
 b=PBFKxUnvCIjM0KU7pkZnZWxATz6vmBBBkE7vojbajxuw6j0IsiOwjEWgVYaoVaVrg
 SzjdSZProPiBPDKV3od+LVeN65vWVCr2iV+UGDOUI+QqJgKXMpiJDBDiGAROdNRzAv
 xD781Erbnipjxj7k8Ek6x2WFRkKoy5nIdK6edKfY=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
 atalanta.volatilesystems.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU autolearn=ham autolearn_force=no version=3.4.2
Received: from okeanos.lan (213.219.168.236.adsl.dyn.edpnet.net
 [213.219.168.236])
 by volatilesystems.org (Postfix) with ESMTPSA id D707D15F569
 for <openwrt-devel@lists.openwrt.org>; Mon, 10 Jun 2019 10:20:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1560154804;
 bh=AZkraaizfm2vqk60zhwFd3MkuYhMzm6SrMXs5CbRabk=;
 h=From:To:Subject:Date:From;
 b=q83/PX61k4JlLug7SuON91o2WbfkHKW7RMJ5ZRgYND1MaRbYe/1Pe5H2bXGbFO7L/
 0cq9BJUwFElyQcmF6+/1A58zd1bUXAdQ788k1MB0dBLZ/kcUSOUwJCKl6LZKWby574
 4kptivWDkVtY+P0e8iRhZeeyVstWVG7D36VP3xWI=
From: Stijn Segers <foss@volatilesystems.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 10 Jun 2019 10:17:45 +0200
Message-Id: <20190610081745.17979-1-foss@volatilesystems.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_012012_851295_BC0B83EE 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
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
Subject: [OpenWrt-Devel] [PATCH] curl: bump to 7.65.1
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

Curl 7.65.0 would break when trying to compile it with FTP support [1].
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
