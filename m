Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9285331406
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 May 2019 19:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Date:Sender:Content-Type:
	Subject:List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:
	From:List-Post:List-Id:Message-ID:MIME-Version:To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Bdx4IW1k5/QgiqoJNoyvB/3S7NRt9ATLQpyxiP4OdvQ=; b=Ye0BeRvVQYSuThLLRtYVjzQQOK
	s80gqSvJJqqd/62d88rxE+BSgL9r2proVEOQEGigmSnFmjGDexWl0Hgl0YWQRuVwD6lWOEQopTeyO
	z6+z2YqVqHJYUqDqlKwJKU6PYhF/jFYnR3LZExbdzJN7jDaY6ij4nfRpxzgAfDN0pbBTEB1YDlkeu
	yY5ZEpsKUogYGq1ouBc4XStpUuOczkYHYV5BVwIh3lF/cm2ZPaqN3EIXpujhaK0VkMYevpKIltyn2
	DKuwC/Oaur9MXcn+PWcV7rMptlg86SRDx3Wkm8bTYS59q0BfRgNjUg32esApCVeLyOHuneY6A/UhR
	3ZOKDSqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWlZy-0008Lx-Q7; Fri, 31 May 2019 17:44:34 +0000
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Message-ID: <mailman.43878.1559324669.2376.openwrt-devel@lists.openwrt.org>
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
Subject: [OpenWrt-Devel] [PATCH] [lede-17.01] openssl: update to 1.0.2s
Content-Type: multipart/mixed; boundary="===============3002632304222972773=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Date: Fri, 31 May 2019 17:44:34 +0000
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3002632304222972773==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============3002632304222972773==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from sonic306-2.consmr.mail.bf2.yahoo.com ([74.6.132.41])
	by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWlZr-0008LZ-DU
	for openwrt-devel@lists.openwrt.org; Fri, 31 May 2019 17:44:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1559324665; bh=agFwHD/ZHjbQHm7L+vfWU7fNL50nghq38BIi2MpuLjk=; h=From:To:Cc:Subject:Date:From:Subject; b=qfqxb2lsp3Ie065nAFuxa+xzvBwNY8KWnvLo27oPehU2FLUrbbEHpaWRoue2j0QRLW5NPhOW4IZt1syL2PoMUICwmvEsxuBVN2Hk2tfUlWdFEp0PdEYMUeWqPBOjffQ6sDMNeSsecJ84OWCyRCLW7DwfmvU/VY7t2xgVWcKExO4jmfC4lI+d9OzUwo7WPHBLMIsNegmvw4ZpGgWtkLBXp5SjFm/ivkShYtiWjavfKLapBB0aeRTAnsgN7tjhXxaJ3TmQaz4vockuJM8XefMm/6JtpAweych8QFAwseNn8QuISMrPV/okOkm1BeefJn6MUZtqG6/7s06TNqWr9gwA7g==
X-YMail-OSG: bUq.UYAVM1kGXZbst12cRKoePqwhxG0ZDsKB5RBfkGkqcPQBdQEjlsKh3pZI.Ol
 swRT9KpsV.CI.ei6nQ37VVwBc.hCfjlHbcJlDSRUl_HmHlYqu.im5MkssrvIsnt.EKk0323Hq8Be
 wXNrH1oTX4Y9AX9FiMthIBKUyWKYzUXAIRZbGZjeWmSwJ_eTJBy2_WONRTWT5w5PwK9glP8CLZCv
 Fw1joS34pWC1PgyZ_NeAHs2YFWtaQLh_tD8qvBBU7ipCJnRNwCW7sJrQannLNIqWYbGyLbregTeK
 pzz3MNpOH6pwl6HXb0L6WvXH6fl9.tjTKWJi3xclUy0Qd9OJIP6oEXPKICYrbOHay5taBbqYRPDA
 jSyjcMjG9H8.MP2eGtpeVNqvARnzoGdNggpXcla3AvIo904P2UlhgYjEzlAIsuvDfRmYhrUW7MXA
 9F3awpPF5TyQxFil5aLiDtuYOGEYDrPh.yY3KIiG9WdFaJ0UMq4xw7rYjoFBezYs1CrmrRJepl5m
 IXqSgprsOglEPiEmCf5w12Nh9tdvAiKncVXr0MebWEp3ScM3wonOR6lj6lMv9VW.7dEQX3lLbawc
 MPhSccAAamCGATsBdKLXbUyYMHByEK_k.0coflsozqiGQYgLZZWCYGz4fe.12IR1i9CxS0M8_hfw
 87ElMhEeYPWpy0Z7tN0bSQkjlXKgD5hHpxC3KRrBzpUS7wSgySgO0DEPUGGX31rZQ30CT6NYUMEx
 i4pnMNF0vnvPMkBlZ_C1oMqdK7Wo0MhtPWmOgMLTDPTScu7.C3o3aB5eOSv4HfEr8ySz50eP70iY
 MbgrWshqND6TD5QsvFF002MkxOZTfV5TtaS1uzTOuREjToX5xbl0T1EhulVM6rW.mUs5BZ8ub9Yw
 qTS9HgcInSx85UYvzghJZ1TVdF75EnOY4UK3Gaq6hEie2d2p6P1Qx4XNTuBPFrwIPvCsMKn7_Thn
 ii7H1xqT0N7o2Jp6_BAVsYv3_Z2i8khq0d0OMaHy2sfeXnUUKXzBuna7DOxU1IOUmIWebu9Pu4Xm
 jSR_vXNA.khtUy6NWFjf_h0f6U9M070jImdWhkZBFDfiRCLDbzmEog6S3wuBPwcf2FnlzNuVPCrR
 ulQOznV_e3s9Ivt77R5mVtlCNTz4oRa5o9Kq5ulKvWCoySVy2qzQ1KWTMDG9l_AFdmkRtVhBk5Js
 a8yhEEdzkXdhVwbQNgNEXV86HHxP4weFHT3YyQ7b5V5Gy9lc-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.bf2.yahoo.com with HTTP; Fri, 31 May 2019 17:44:25 +0000
Received: from 18.175.75.177.infopasa.com.br (EHLO gateway.troianet.com.br) ([177.75.175.18])
          by smtp427.mail.bf1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 5c6ba14e5cf7857fdad1e9507d5b6f60;
          Fri, 31 May 2019 17:44:22 +0000 (UTC)
From: Eneas U de Queiroz <cote2004-github@yahoo.com>
To: openwrt-devel@lists.openwrt.org
Cc: Eneas U de Queiroz <cote2004-github@yahoo.com>
Subject: [PATCH] [lede-17.01] openssl: update to 1.0.2s
Date: Fri, 31 May 2019 14:44:15 -0300
Message-Id: <20190531174415.3321-1-cote2004-github@yahoo.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_104427_645313_0C33764B 
X-CRM114-Status: UNSURE (   1.68  )
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

This avoids CVE-2019-9498 and CVE-2019-9499 in hostapd

Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>

diff --git a/package/libs/openssl/Makefile b/package/libs/openssl/Makefile
index 331fbada12..60357604b1 100644
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
@@ -23,7 +23,7 @@ PKG_SOURCE_URL:=http://www.openssl.org/source/ \
 	http://www.openssl.org/source/old/$(PKG_BASE)/ \
 	ftp://ftp.funet.fi/pub/crypt/mirrors/ftp.openssl.org/source \
 	ftp://ftp.sunet.se/pub/security/tools/net/openssl/source/
-PKG_HASH:=ae51d08bba8a83958e894946f15303ff894d75c2b8bbd44a852b64e3fe11d0d6
+PKG_HASH:=cabd5c9492825ce5bd23f3c3aeed6a97f8142f606d893df216411f07d1abab96
 
 PKG_LICENSE:=OpenSSL
 PKG_LICENSE_FILES:=LICENSE


--===============3002632304222972773==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3002632304222972773==--
