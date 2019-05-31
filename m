Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3AB313E6
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 May 2019 19:33:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Date:Sender:Content-Type:
	Subject:List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:
	From:List-Post:List-Id:Message-ID:MIME-Version:To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wqa4A9fabG0kMVpBJOllDppBkXD114UtAf+kJkRIImM=; b=S2TkN9K1eGa8+zoi20GOFBc35D
	9CwThlCmvA+fVIm+9YUDfKovWjQRJv96q5j3uwXDYh+w/wn0e7DQl+NvCqxQfemnfvnFAbab7RDhZ
	Ns5dmdKphqTwE8AOwUxjYJyYhvdkrw9tel6cbpel9JTBP/51S5CO+POAYSTwzbgdecplBF5bXxsLx
	rRxj8wtqsOLyJ7n3+TLYsB9s2UX6FBGVphuvuFryoRM2sWOAWyO9JyORK2MrThi6b0GD9HrEZ0Ncq
	53Zo7xlg1nJCqD5uPudBL7oSNKyHPnmkOkXxGQrHFvXs73h3Gt9yEGBfl9pA4WCk1E3puTk2Mi+i5
	gYjn6vIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWlPC-0003UR-3s; Fri, 31 May 2019 17:33:26 +0000
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.43873.1559323997.2376.openwrt-devel@lists.openwrt.org>
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
Subject: [OpenWrt-Devel] [PATCH] [18.06] openssl: update to 1.0.2s
Content-Type: multipart/mixed; boundary="===============9073881070362880475=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Date: Fri, 31 May 2019 17:33:26 +0000
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============9073881070362880475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============9073881070362880475==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from sonic306-2.consmr.mail.bf2.yahoo.com ([74.6.132.41])
	by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWlOy-0003JJ-4E
	for openwrt-devel@lists.openwrt.org; Fri, 31 May 2019 17:33:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1559323988; bh=PLakXTAI/cU9qmg8ZYan50EMy9AG2iqFy7Vby3RQMhs=; h=From:To:Cc:Subject:Date:From:Subject; b=NuvSWQ33y7ueJV2gT55kbnBa1DzCiKop8EhXiyN9r07O+SIt/P9RGOOB/Cgjrw4uAuJCJzrX8bX3t8riUIAXWTzC4+VYsc7PCCCLwjZ4ZY3hgSZe1QuKXNF4xjAOaJNOCsRqSEErAqU88pWPiOSVr6RtmZqU08mk/ekyAveWzWRxURaqi/MC0lIuN0GRvm+LTfzKk/ZvLUJ9h0Qv1JhklEDqwT7o43/7+Tnd6Mtju4kd9U6u+lhjKCPlhEgJKuG5EGZENKIe1l+yOplhWaFxg6rmKL7o+f8wfbZxxbok6Uas2kyOG1bWKTTSllNfMoQeMnah2YULbrMiEKyUs/sE5w==
X-YMail-OSG: Jv8HNeYVM1nkgTx8RZs68XqcMG8tuHlKj.jUasni_o8az5u3z6NEOUUlBtbvHoo
 wH18Li2W0RjwF__TYJT5gMh8u.osNRxnpHX4ipsw9zDjKyChyB0H8SWJG3U_iROUsujMgw.4EGN8
 U8bYZ57.IU2gqSaRsZ5Z7XDxgRxedQYhrQEA_Zkwjj9DY2L0SoTw0BN4fKV0L1Cx91B8dAvA6PHV
 r5OC88dG9VjgzW4E_k9SeKdrNafSh_yI0rpoDzPNR4mJz_8xuY7X_fjeUsjt16XtlQZh0SR2xZLo
 zSolwyEZVsh8bm1562lBcH96tl44yHchow2f6B5LqJIvmGF18NJojdrPeEcr7kV8F4RxfuwrwW0Y
 E4zhr4d2vNInDkJqCtDCbyG.F4aAhmBYhw5FzGycnUlNPwWz7589J2qpM6oaLxIICFBFSNStRqpm
 jrcypXTkTvinfwMGBuuGh.ssBrrZW.qBeV.C76DGa35jdpMO4c3ccmtzNeCLU06OCm_d0OmRuJYF
 4X6CS6EbK_WYi7E_UL2Un_beVLN858G4uOEaSWdZCd70ED2wvaugqL8Gy72uXhY.gHc.gful.MUL
 GkBCkjhCImJUCZ2XLGKuHrQe7gK_b9D77mj2qNJQHvKZ2GRA45WWhyl7NwsSOGv0q65U0rD_S5lw
 bGMul5Uorp7bClk6C6gIXFE5IT6VYBnHHW.or4a7CMaTa61zaqOpdMM9UHfNdyPXdjy8K7xW51Vr
 4wWKHi.eAWdk5gCE7MoQi5uVjc2D0pHJR3J9069.h0A3glt3_183WVVN2jKFa0BDFRs5mWJ8Ez9c
 MJPkWfjBY9hDnG2fXMIGycs0Q_maCEBe76f0xw29xBrsDNbFDtqXdlL37Nb0gp9t3I5Ef5RXUDpE
 mnlJuyzdJbT__.4O14O9n4tCavKLF0tKS8.cHm8b7inDFwpBanHFXfIVPTwgLd7jPecIWnWVQe0m
 cYMEpB.cSjQ2nVjZql7R9oBM3YQwlXnIBXulx.ze5QC1DKrtTZDHbIgUyumNxVZxA9yqEWZo2g7e
 KtHn1uA0PHCYiDO9p4J34o1hVuA4KkRTOHxFPcEqP2fnfH3chXbQ8Ofl_nM0HLI6v7ygGlJSV06_
 lP5fDCa4LSXmWDAxI1atltgxs62qyC8rEzzmBYEoXjasoVjPYSqLPGADYUL3AP3gd4nTexYozrjb
 4LpmepWwV37MB4ryI
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.bf2.yahoo.com with HTTP; Fri, 31 May 2019 17:33:08 +0000
Received: from 18.175.75.177.infopasa.com.br (EHLO gateway.troianet.com.br) ([177.75.175.18])
          by smtp432.mail.bf1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 3b5ab56c03825167a8970c0ebc8c092f;
          Fri, 31 May 2019 17:33:05 +0000 (UTC)
From: Eneas U de Queiroz <cote2004-github@yahoo.com>
To: openwrt-devel@lists.openwrt.org
Cc: Eneas U de Queiroz <cote2004-github@yahoo.com>
Subject: [PATCH] [18.06] openssl: update to 1.0.2s
Date: Fri, 31 May 2019 14:32:18 -0300
Message-Id: <20190531173218.31100-1-cote2004-github@yahoo.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_103312_481352_85E0A9B9 
X-CRM114-Status: UNSURE (   2.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [74.6.132.41 listed in list.dnswl.org]
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

Highlits of this version:
- Change default RSA, DSA and DH size to 2048 bit
- Reject invalid EC point coordinates
  This avoids CVE-2019-9498 and CVE-2019-9499 in hostapd

Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
---

Notes:
    Run-tested on mvebu/arm/WRT3200ACM & brcm47xx/mipsel/WRT610N,
    using openssl-util

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


--===============9073881070362880475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9073881070362880475==--
