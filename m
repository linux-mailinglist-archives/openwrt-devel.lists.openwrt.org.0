Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9E71F7247
	for <lists+openwrt-devel@lfdr.de>; Fri, 12 Jun 2020 04:37:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c0yHZ+Zwb1nyU99u0UZTZYq6E5yjFChjQit7WvhyiLg=; b=dd3SxIP1kzT1Wi
	cF+8Walx8Ue4zkUs3I7FkTbSKrvBSaIlbAJcvOWkp7sSXa9Xkx3Gy6YeDPQIZCHs5hizp6QJf3HLi
	FTf+t/d5NHbD3s8nbPbqEqX63sRdu1MAiIaYELShC2yGXdsAH4U4R67gxR9Egb5fWSOvzhBvHtcXt
	4HSEy+fN2hBH7KS+AdFVa/zdv3Gh9QeUgnBUo90ZPOWOhk8L5uOKm+Xwg9tac3sn0RTVKFfZ/hEMe
	T85QqbNLy41c1jhWITMpd2k8lcbYWe5wiUovxWk2GQ7gC+pp+bx7rG5mTGxVBUAN3Nve+zHuNzHwL
	oewyq33WF0Y+cjF5AkBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjZZV-00077G-NS; Fri, 12 Jun 2020 02:37:33 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjZZQ-00076q-0d
 for openwrt-devel@lists.openwrt.org; Fri, 12 Jun 2020 02:37:29 +0000
Received: from mail.onyx.syn-alias.com ([206.152.134.66]
 helo=smtp.centurylink.net) by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <shep971@centurylink.net>) id 1jjZZC-0002Il-Tm
 for openwrt-devel@openwrt.org; Thu, 11 Jun 2020 22:37:15 -0400
DKIM-Signature: v=1; a=rsa-sha1; d=centurylink.net; s=ctl201402;
 c=relaxed/simple; q=dns/txt; i=@centurylink.net; t=1591929421;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=JPzVq4MWgRcWQ3HMRHi6mXNpjSc=;
 b=ixuGwyG/ufimBk/lFmKsXAq5A3K3ubUAlNJeAVE6U86r7Rc3zAkWZDBo/WbD6eZI
 nF9I6dc9mhGHS4RySy1h+DwKBEFoCdEjgPXpGbsUrfhX6wvUkKRjXHZkdhB2FIVm
 ZduUTNGDRY72KLPgfqAWiQlaCpNQRdEBCkjPd3whtuYRMqh1UeBQUidwd+QActbc
 hjoaK+n4+lXNCLhCtY9/fO0tSl4snAqZsCv50Ux1cswnnInZQV2DuZ0WcC6Xutut
 oZfEYYB5vHQW9oOCJ+C3nzfhuqBljTRjU9w5AVWVY33iRXCAbFH5Q2tV60ErWrSj
 VafC6D77U+vhTWKbfWDpjQ==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=f682+96M c=1 sm=1 tr=0
 a=OSsl9/196MxzRSbOzWpbVA==:117 a=OSsl9/196MxzRSbOzWpbVA==:17
 a=KGjhK52YXX0A:10 a=IkcTkHD0fZMA:10 a=nTHF0DUjJn0A:10 a=AsiJWZegAdEA:10
 a=eQrCS-SpgXYA:10 a=I_5RNyk1AAAA:8 a=BLFaDwG6j5Qwu1-Ivo4A:9 a=QEXdDO2ut3YA:10
 a=Eh9yxdLE6B1twWrs3SXz:22
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
Feedback-ID: dfw:ctl:res:onyx
X-Authed-Username: c2hlcDk3MUBjZW50dXJ5bGluay5uZXQ=
Authentication-Results: smtp04.onyx.dfw.sync.lan
 smtp.user=shep971@centurylink.net; auth=pass (LOGIN)
Received: from [71.32.3.225] ([71.32.3.225:14080] helo=centurylink.net)
 by smtp.centurylink.net (envelope-from <shep971@centurylink.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=DHE-RSA-AES256-GCM-SHA384) 
 id 55/F0-16539-D4AE2EE5; Thu, 11 Jun 2020 22:37:01 -0400
Date: Thu, 11 Jun 2020 19:36:54 -0700
From: "Heppler, J. Scott" <shep971@centurylink.net>
To: openwrt-devel@openwrt.org
Message-ID: <20200612023654.GA37114@centurylink.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview: Was unable to communicate TEW-810DR port order was inverted
 similar to the D-Link DIR-810L. Tested - Patch corrects port order.
 Signed-off-by: J. Scott Heppler ---
 target/linux/ramips/mt7620/base-files/etc/board.d/02_network
 | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: centurylink.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shep971[at]centurylink.net)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [206.152.134.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (shep971[at]centurylink.net)
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_193728_213341_A508BE72 
X-CRM114-Status: UNSURE (  -0.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shep971[at]centurylink.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [shep971[at]centurylink.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ramips: fix port display for TRENDnet
 TEW-810DR
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Was unable to communicate TEW-810DR port order was inverted similar to
the D-Link DIR-810L.  Tested - Patch corrects port order.

Signed-off-by: J. Scott Heppler <shep971@centurylink.net>
---
  target/linux/ramips/mt7620/base-files/etc/board.d/02_network | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ramips/mt7620/base-files/etc/board.d/02_network b/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
index c70e4ff8e4..f85b7cfed1 100755
--- a/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
@@ -25,7 +25,6 @@ ramips_setup_interfaces()
  	ralink,mt7620a-mt7610e-evb|\
  	ralink,mt7620a-v22sg-evb|\
  	sanlinking,d240|\
-	trendnet,tew-810dr|\
  	youku,yk1|\
  	zbtlink,zbt-ape522ii|\
  	zbtlink,zbt-we826-16m|\
@@ -109,6 +108,7 @@ ramips_setup_interfaces()
  			"0:lan" "6@eth0"
  		;;
  	dlink,dir-810l|\
+	trendnet,tew-810dr|\
  	zbtlink,zbt-we2026)
  		ucidef_add_switch "switch0" \
  			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan" "6@eth0"
-- 
2.20.1


-- 
J. Scott Heppler

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
