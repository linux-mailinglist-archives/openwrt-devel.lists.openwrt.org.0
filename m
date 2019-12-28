Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D38BB12BE01
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Dec 2019 17:27:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D/75Bm4UGJa7xB62aw9Yru8SCtABYZzHcKE4Whs5+EY=; b=I/8CzmnpY2t0jGd6OC2sUXLuyM
	JVb0f0ob8IIo+RiTGGlYWwcbIqXsP80BoVcetv5Z49ekTGnnbeFwZRmIpZMtixfyG4Gk+67mrY1+r
	m+iZjCSwhzPnh110V2gO7MVkOQerTQSIHC8PwGohNpik1vsauO5RHBagyDLIGxYLAy86aYyXwqaYw
	T9QXOMcOAHaqK2p5lAhwb5t3ynwNdo9OL3obYMjiiAcNQCsOFrlpwZkbqRvVP3eZR7t6/X8osRsov
	hdaIrhiL8rK5+Gb9plDn7esz7ScGeOCBBIhTYPm1BqwdKNRXQZwBqOq2LUBW9MomcFO+/mTtwyaQn
	5tJMOEsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilEvV-0005jg-Qm; Sat, 28 Dec 2019 16:26:53 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilEvN-0005iq-1V
 for openwrt-devel@lists.openwrt.org; Sat, 28 Dec 2019 16:26:46 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MvsR7-1ja2vX0EdT-00swgs for <openwrt-devel@lists.openwrt.org>; Sat, 28
 Dec 2019 17:26:40 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Dec 2019 17:25:51 +0100
Message-Id: <20191228162551.13270-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191228162551.13270-1-freifunk@adrianschmutzler.de>
References: <20191228162551.13270-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:iTyOeGhrLYqMkf7lxtV8CniSQX8qu87s0OHILJYu6u7JcZD/nL7
 /IKLHvyx+UqAMRwKzsavERN0zHIgKkiCtiQViEi5fKCmoQXJYc/RxfZ0XN5c43TVOgcLnzb
 i0Na81gHl9TzIUqOuJNJQmFeLLv77PZcvgOrJ1CclGR8Ek1f7SMvKva75o0IkayH9AQcXId
 pFbKwtUYF8X9RXVygFlEg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:96E+JwFQUWM=:KhFvnKKG7qmCuE+GhnmwEC
 vxZ06H8QMItrpUTo2MxONkVZfb3YwBGyUKl6seG0tPnDfgZ6ksKOiKwr0RGzEhJZw+wmTHuGh
 DYWd8y6xMae8BLN2B50RerhtrFerzKk+WaHsb7g6IwUUvlenFVT/lLiDF34Q4j7lMiGSEcUwB
 aCo9YHydRV3bdnH2SvN0cjgqE0iH/hO3qFUFA9d0Cmlgy4/s4XP7uTKj7uothbViyEQ9BISiG
 Ko6NUq3QiJbpXLFLhdje3ITeCRv9lFBhnKOitJCAS3/BS1stUGjEgetPabOcpeJEZC0CrCAUX
 My+KTSwUaAGLHD9pOhpA3KdEAV/f08Pv1tiNuFJHoVeRr2yYcVF07eiK+WYl3KU2l4Ta3LVf3
 OSfCIeBtokBHNu2Hrfny55rNzRF0RfowAXXfpyJYrsEHMgkEmSckdHg1mvWJFG1N/IhHls0fJ
 x43O2QorVFfwttddK26Fl0un5Z5MAaS7BEfdbbMSRgf1gHYp7t75WTXEt3n7ce7YgRrBagPpa
 HvZc9MgFT6FaLK6kfWlEvhjhxq5WLr9e/vvFtgGSlH0mZAsClbO43tzq7PGMh5Vh8Q19ODp3v
 wFtQujJVxQEzzDEVohiaXR7uVUI8ijH1k6CJI5u4WlfVY6Yrb2VrVdQ5v5aGybo5WNIaqHBm9
 8Y3XYcqzEWoY/D/L7H3MSmB4l+Emrmb/rRtlvwqxNxMTP1+i7JtWwKMzwnJuwX25lRg6by6fW
 IXZlCFIKytFOU0SaZ90YVKR3JVE3WqMPDDNQ5L0nt/7wGrvxnaNSVusjCMv15HViv4jJoz3kf
 IN+00xHF0ldo67pae+frSxHFbIw4X0rvnLJLttVb8zxvPr6iNMmWkK+LKn1pMUV/8Tv6z6MdX
 dGoRq0AQEFDVC5CMm5YlrRz5xmVjd5kZAY9fg62E4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_082645_381733_01ABFA39 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] samsung: add subtarget condition for
 device
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

The only device in samsung target is meant to be built with s5pv210
subtarget. Thus, though this won't make a difference for a
one-subtarget target, already add the condition to the Makefile to
make the assignment obvious.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/samsung/image/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/target/linux/samsung/image/Makefile b/target/linux/samsung/image/Makefile
index 53509ef137..3648562704 100644
--- a/target/linux/samsung/image/Makefile
+++ b/target/linux/samsung/image/Makefile
@@ -17,6 +17,8 @@ define Device/Default
   DEVICE_DTS = $$(SOC)_$(1)
 endef
 
+ifeq ($(SUBTARGET),s5pv210)
+
 define Device/embedsky_tq210
   DEVICE_VENDOR := EmbedSky
   DEVICE_MODEL := TQ210
@@ -24,4 +26,6 @@ define Device/embedsky_tq210
 endef
 TARGET_DEVICES += embedsky_tq210
 
+endif
+
 $(eval $(call BuildImage))
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
