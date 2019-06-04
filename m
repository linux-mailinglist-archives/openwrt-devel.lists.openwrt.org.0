Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E9733D6E
	for <lists+openwrt-devel@lfdr.de>; Tue,  4 Jun 2019 05:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tE7noSiMZlE23F1dVUN+QnzIdMnt4Wfo15etkDyi4h0=; b=piu25jy9qiAeSe
	wZCpY0vs9tAmeamM0Xj63kjzTwwGYdFBLjHLWUaAaTYm4TrPvxf1ewicfLV3UFKaeNMUK7xuI0jjG
	1SfTIiZJMFEhTz/gmyb5Wp69TdTt+xsugBsu2QNtqBfCPbFG3CZ54KpA92xydoJ/dB/9rX4XLfqfv
	vh4y6zvVvILokslRxEs2czs6ZEYW5UeAVA7WFpCJOZv+q6nSZwgHwK2WxHKUoFcONK837riRJMGV7
	W7DHtFJFjPPDwPef4Bd3W2GYy+eSFPOw+rQXQ3f6h0AdX7lwvW2mLIvf67+u9T+kgSI1DpbKhClNL
	gt/3EJk3URY0IuMhZBDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXzv0-00074A-T2; Tue, 04 Jun 2019 03:15:22 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXzuu-00073p-ET
 for openwrt-devel@bombadil.infradead.org; Tue, 04 Jun 2019 03:15:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=01Pp9S2yVebKhx/cZlaGNI1Zo/gR0kOsUYzh6cLNMbk=; b=IxQHRxdD+PykUi72ezgOpIsw9
 3Y0cTDj9OhJfMxs2NJnc8qbqhvsyihACPELeX/Sepw0fhZQE1Gi8gaePEocebbk0b2yBx2r8+drws
 kqoJa9cT/9mV6wS79lehP4Bk5QF4WjrMA0p3Fb6Al+/WflPAFE3iYvYpIK6c16uilTJwdzBbTrbgV
 nqaTz3fEvicJKW5yMcqwOsRTOYtto3g4bIK+FlrryCo3RzSeknniBuf4BmFGl57SD/CMoe3pZSiWQ
 7sclsVsLSUrSkm7/zhdXULIL38D7ZL7pIr6fABrJDpbRrJQJIpcDyD6A/M1OnsDKZjYk1ByO2CkcS
 8aMwk/Hsw==;
Received: from smtpbgeu1.qq.com ([52.59.177.22])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXzug-0001SQ-GL
 for openwrt-devel@lists.openwrt.org; Tue, 04 Jun 2019 03:15:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1559618073; bh=01Pp9S2yVebKhx/cZlaGNI1Zo/gR0kOsUYzh6cLNMbk=;
 h=From:To:Subject:Date:Message-Id;
 b=odPMTZ4/xNdYtUJZu+dSpSee0yp6Q192W73jDvW4R6JCHEk01miaFcYuk5UFLBl5S
 ZWTDqm0aVFngZnnyp/mEWrz86+B5MtJUdqKvqiOe/gOPsO1V8VuM2FupaXjjeiXxoD
 svakQtMRgMUWfQLnDwKQYHI3i8wrzI9Bbop/+quw=
X-QQ-mid: esmtp3t1559618072tby9zmxf3
Received: from localhost.localdomain (unknown [125.121.11.203])
 by esmtp4.qq.com (ESMTP) with 
 id ; Tue, 04 Jun 2019 11:14:31 +0800 (CST)
X-QQ-SSF: B1000000000000F0FH100F00000000Z
X-QQ-FEAT: Kol1Dm0TdrAcb7CMdkAbeRuMNKUqFON+ilFqYIpBhA702WITe6h6yHshi3wlQ
 xwcDDTcOSDVav0iHWvYt5u0c6Eb57SqyCoLcSVKnci0TFN/PQMCO6Mm98yL4MSVCra66iI8
 zou65uZdketQkzdRwhkqn9Sf2PixEPL34F1M+4aUxdi92P/NL7jEsjO3/zbrj0o1oMJ/sQd
 xxmQKPMpaXb+oZCC0t299y8Bxuu3DKQuSAUTSKNFdbT6m/gm+/ARHFGDZwAI3DipR+qKSHU
 CwTdv1nO6r+L95RQyRztl8+Iet21aKBTobLgusLzzdIBKrZVyPW7ipuuw=
X-QQ-GoodBg: 0
From: robinson wu <wurobinson@qq.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  4 Jun 2019 11:13:39 +0800
Message-Id: <1559618019-5561-1-git-send-email-wurobinson@qq.com>
X-Mailer: git-send-email 2.7.4
X-QQ-SENDSIZE: 520
Feedback-ID: esmtp:qq.com:bgforeign:bgforeign2
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_041502_714330_46BEA86D 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.59.177.22 listed in list.dnswl.org]
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wurobinson[at]qq.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/3] base-files:fix a bug when add led timer
 trigger
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: robinson wu <wurobinson@qq.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

When I tried to add a led timer tirgger in "target/linux/ramips/base-files/
etc/board.d/01_leds" like below
ucidef_set_led_timer "system" "system" "zhuotk:green:system" "1000" "1000"
it will be failed to add value to "delayon" and "delayoff". This commit fix this
bug.

Signed-off-by: robinson wu <wurobinson@qq.com>
---
 package/base-files/files/lib/functions/uci-defaults.sh | 1 +
 1 file changed, 1 insertion(+)

diff --git a/package/base-files/files/lib/functions/uci-defaults.sh b/package/base-files/files/lib/functions/uci-defaults.sh
index 315df7b..23bde9a 100755
--- a/package/base-files/files/lib/functions/uci-defaults.sh
+++ b/package/base-files/files/lib/functions/uci-defaults.sh
@@ -463,6 +463,7 @@ _ucidef_set_led_timer() {
 
 	_ucidef_set_led_common "$1" "$2" "$3"
 
+	json_add_string type timer
 	json_add_string trigger "$trigger_name"
 	json_add_int delayon "$delayon"
 	json_add_int delayoff "$delayoff"
-- 
2.7.4




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
