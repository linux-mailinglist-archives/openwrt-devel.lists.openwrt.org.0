Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEA231430
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 May 2019 19:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Date:Sender:Content-Type:
	Subject:List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:
	From:List-Post:List-Id:Message-ID:MIME-Version:To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+I37fubhPJ9zYRqi5XnJk3UxFG9zS3cHHiYgKb5emP0=; b=j79c9wJM1L0P1yilRe6hvx6N+k
	wNUYX34uGaScvwBFDr6pbyS4Y0f9xf+ukpyLxudP4blLTJvouZWl5bKac1AYRWdv6oMNx39e8N0/+
	80aHeDT/ydzDotvdtQNN/rDpBADwyNQ+XBT9MbRbnugxx56ZCqD2cTr09rQugebW39SOPGatyMX5H
	vGrbazDjNxOI7ocJ0EXSIjxwEeee5L+A+gMZinhsUYC5kUk468TU1neIfNsCXg0rJegS75VONWSNd
	0HNTw/i1uDMTYTEeyDR5FbHTdpEmVxLK72NKygoAxmSUmX/c1GIvWMwmb1xf2R7wNnorb6qOlyr9L
	7xp/Jpvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWlfd-0003xq-H9; Fri, 31 May 2019 17:50:25 +0000
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.43881.1559325020.2376.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Eneas U de Queiroz via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Eneas U de Queiroz <cote2004-github@yahoo.com>
X-Mailman-Version: 2.1.21
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Eneas U de Queiroz <cote2004-github@yahoo.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH v2] [18.06] openssl: update to 1.0.2s
Content-Type: multipart/mixed; boundary="===============5033515768861471771=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Date: Fri, 31 May 2019 17:50:25 +0000
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5033515768861471771==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============5033515768861471771==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from sonic310-24.consmr.mail.ne1.yahoo.com ([66.163.186.205])
	by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWlfV-0003wU-Jl
	for openwrt-devel@lists.openwrt.org; Fri, 31 May 2019 17:50:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1559325016; bh=GQwt0MxQmrjUkD7cWpAWhu/xKyDGfSGyCAUUAGkI+kg=; h=From:To:Cc:Subject:Date:From:Subject; b=GgFk0MOqeW/4EY1O0lBycwJAGuhRTxue1C7wAqtosetqiAww4SArf7JjhKH7ECHjo6FnjXmZnXK1xYXNZTIDnfsjxzry2y2AlE0dHk9aXBmYs7hjEi+iW4Ox3En7GuP6FYpWtbnlphvF2DG9asw7EvlDa3c45ht39srOlE7WosZwi3dBAxHPVfyt6XWrZh2cSDLwBRal1eg65ZQBDE799OzRE2JH9vMAF/QYklDO23f6zxjuZ5qTM9/xC41Vf0GZsWeZI59iQhx4JVPxnGO7wJ9RBpqsAtqQSrgQwUGBqnFxQHFvBQoG7OqwGBhhbR2KQfOL49sv7XqaGIqDlP/2Nw==
X-YMail-OSG: GtsDbrkVM1mToIeR_zYpbWaI.mxwTQdMOyepBT5KCWkJdGgKkTIaj8lktsTB4wX
 ppXYubk7ER6VjUVw_pdbEEenG5MxNfDw99Tg1fkSAwIMG85BJ4F3Ww9gkhb_P9gwUVuXqByK_Wpr
 CkA71DSlzNym4M_hUznFoAq8s7fhJMRbjxDSo0x9qX06yxzG8ENAPgIbtgvI19uROYvuW9pSbgDx
 cROZe5jD8jYlkxOUfBADIjKdZRn9I1TGID6jruxktK.QhAguXXdaJZB3bFEOtDKRymMOjWBLhl0e
 YIIsi_bAgiio3VzCmuegQPijKMmFIwp0vCEclNUKNcapjPG9QbN_3Op1_3dYuxPQOnxbI.hmM.XA
 KvRn_YmPChsEjweluJraJhkWs8ROMsfXwciXrePGW6XhxIadF3.EEB6dQenuCuu2fdq3kVkRBkTq
 Kj6xwvpz88Qyp7RlixjJkO.JsH65Znv.ntUmTbD2nzFdMBflmnT9eXn79cSLaWPz5iN5v92cGUCO
 R9rDRaxEeV3.URGyISlVjwb6aC0.EX7uZ0QuakGjI8_e3GvDYSa6Tb4Z8JyrfN0qhnKnPNiTMPps
 8kcZPhWPVVHRvJLGbqAwtD7yHBu9S9YerIoMMEIskwkgbb22NGd8XVZnvnulMQoUgrzuDB5n2bm_
 jksVtnP7rmQYeRLaEAJjqnczt7iZgVZ8fHkoXAjqfdbno7sxLy9ZTDvQtUQypY3vWd43Wy_UbHkr
 w.m7KG076G1TW3SxBNHwZV4F.5WYQ6tMLY1TDBRoToZ4MO.zAuBDyPdjKaczvXi5CtQ9Ge1m5aH_
 t_U59npl822OB7pmv44Gmjtcv.SUBfYXN6ZnFmftpjuLWVQF2hHjMQOsfKc7FS7Kp8anIU8D_YVZ
 E4z_E0EPF1PY4ELOAaFAS.W1BnrG8XXpMMb5eehuLDruVbaCRuRsBmTTJy_jOcYNY..abkwMdbgn
 aIkzHaXY99kCAP1SXIuiVdBHpmoHNYa_fye.0WwBQaVUPl1AqdHrvlJdZ5LVZRxkwAlajhvxSP1J
 TBwfVLk7x_Ov34uPPoVujg.x9X5LPqyYTyAnGtaBqr1j8l4RejpIi6DOqooLrg3R1M3Fwn8C3hjp
 GsAQEbIHB3q8lYEg5hra7G4KopMUyzo1fMrgOkhjw.4mxRSnJnuRaaNXKS2Ld2yoi0DRDlHN0Y4T
 ybcR1gN0eC6Xf
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.ne1.yahoo.com with HTTP; Fri, 31 May 2019 17:50:16 +0000
Received: from 18.175.75.177.infopasa.com.br (EHLO gateway.troianet.com.br) ([177.75.175.18])
          by smtp410.mail.ne1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 311039463ab80de49f5f13c56769e948;
          Fri, 31 May 2019 17:50:14 +0000 (UTC)
From: Eneas U de Queiroz <cote2004-github@yahoo.com>
To: openwrt-devel@lists.openwrt.org
Cc: Eneas U de Queiroz <cote2004-github@yahoo.com>
Subject: [PATCH v2] [18.06] openssl: update to 1.0.2s
Date: Fri, 31 May 2019 14:50:05 -0300
Message-Id: <20190531175005.5003-1-cote2004-github@yahoo.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_105017_901516_A6801578 
X-CRM114-Status: UNSURE (   2.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [66.163.186.205 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (cote2004-github[at]yahoo.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

Highlights of this version:
- Change default RSA, DSA and DH size to 2048 bit
- Reject invalid EC point coordinates
  This avoids CVE-2019-9498 and CVE-2019-9499 in hostapd

Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
---

Notes:
    Run-tested on mvebu/arm/WRT3200ACM & brcm47xx/mipsel/WRT610N,
    using openssl-util
    
    Change Log:
    
    v2: corrected typo in commit message

diff --git a/package/libs/openssl/Makefile b/package/libs/openssl/Makefile
index 2902ce15c7..99f1b861b4 100644
--- a/package/libs/openssl/Makefile
+++ b/package/libs/openssl/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=openssl
 PKG_BASE:=1.0.2
-PKG_BUGFIX:=r
+PKG_BUGFIX:=s
 PKG_VERSION:=$(PKG_BASE)$(PKG_BUGFIX)
 PKG_RELEASE:=1
 PKG_USE_MIPS16:=0
@@ -24,7 +24,7 @@ PKG_SOURCE_URL:= \
 	http://gd.tuwien.ac.at/infosys/security/openssl/source/ \
 	http://www.openssl.org/source/ \
 	http://www.openssl.org/source/old/$(PKG_BASE)/
-PKG_HASH:=ae51d08bba8a83958e894946f15303ff894d75c2b8bbd44a852b64e3fe11d0d6
+PKG_HASH:=cabd5c9492825ce5bd23f3c3aeed6a97f8142f606d893df216411f07d1abab96
 
 PKG_LICENSE:=OpenSSL
 PKG_LICENSE_FILES:=LICENSE


--===============5033515768861471771==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5033515768861471771==--
