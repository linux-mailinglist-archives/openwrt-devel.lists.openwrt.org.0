Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 308CC806F8
	for <lists+openwrt-devel@lfdr.de>; Sat,  3 Aug 2019 17:15:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rL4w5S6oE9W9I/LxK2DbsxcOnczROorKD24YkTi5il4=; b=sS6jAPjXaMeK4L
	+SgfLe5Yt/7gJyFxtjEcdsitOCqUm9InSIDl1jwaHX+TJCAfkGlFkQ+12DmXoWPQpy01UeuLZbIrX
	G3u+7SE1osl9/FeqAWbI/QZjaAmKdZfTYA89Ql2qoHQem1zYDcSR19Rp1TlFDd7l1V4kkxeU0yNvH
	oxQB5W8EH3zTQvufO/HMyTqAPkvGBmilNScM2gXASIPv2jmm72pk1elw38kdq1VsgLlEJQ2mCk757
	zvpA/LcopvZ8SexF0ByF2xyj45LmAQ548nUY6iQVdeOsq3qAQLz2WyPCaQPZ3Ngk0bPPccwK0/W7T
	mrZbHSuSYZp0+bRa3Lxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htvkn-0004U1-3f; Sat, 03 Aug 2019 15:15:29 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htvjp-0002if-Ue
 for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 15:14:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1564845265;
 bh=uqr3ra7ZAwCtf4DLjn36Tc5dm0nSNMx4r4VEXKSnu7g=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=SQRh5/46n9uLdVotJiZpfpHU+85eMBEXYrb8g/LOPEvE9Kc2xbjs0f+ozOqJn9X5A
 Rv29Q9U/QbmWSLCGWyCPTEuTpQIlwQO9js7uf/7g1pHLWE7vffhoazgLXd8hwbJbMK
 isCeJESXr9OioO7su1yUYwCtNr4z4T/mTSjxCZLU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from depc0045.ats ([77.181.84.240]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0MY4Ls-1hpa8f2TCa-00Urz7; Sat, 03
 Aug 2019 17:14:25 +0200
From: Arnold Schulz <arnysch@gmx.net>
To: jiri@slachta.eu
Date: Sat,  3 Aug 2019 17:13:56 +0200
Message-Id: <20190803151356.18733-3-arnysch@gmx.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190803151356.18733-1-arnysch@gmx.net>
References: <20190803151356.18733-1-arnysch@gmx.net>
MIME-Version: 1.0
X-Provags-ID: V03:K1:rbhNJsveXKPC30Hc6GRPIuetma1onZ3XlClF57TKWnsCS5WzcNi
 DeV9bVrBpFrxPtC9E4cl/+SZq1OncRUfSFcmay2mrHF8gvnX52xYb4V58d6SJrwdUKZ4268
 fRYSxnE2AbJShyxk8R/hQ/kvLTxlIBg44S0HNhwWu+jQe9wzNKs3MreKMbb0Nhz1vsoq68i
 +JXQKdujkuwLi98w8lVAQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ygd8x4G/yds=:YisL46UgAtVvbDreV1S5xC
 eWc4hi7P0B5bispVE0p1zR/MqCizuyKkQOnTU9ndc0lRfAMseszxUJB67JHh3VZz9VZ08/7w4
 poyj3NdnDmbns41QZGjbuNjCQOsxQk/bhRGr5oLarvu2u6nmIN4D2yBbL+n3HC9hLxZFz/yTC
 NBCXKYUirO/UqYyPAVSaEBu83f75i8n2wH2lPiaKgKJREi2gcBckXS/mqAHOR/6IVmpDp2OZA
 IDlbmtoVdjank4IE5pt4AVMPjQ833Xw++k8P+bWi39JfNY+0Ve3XsFyiBmWEz3gETIZ2JIhgc
 Ukq5VMQ3YhN8Ep8v8Q68ZlwRr0MiLzo3JNfIicNOIxaFqcmoCE0vJJWlpyHII8zWJsrzqnnJZ
 DbYqJ+EuqWhAB6Rv2IMdtXfeaNUi3wqpV/F1EQLDfkRCWicQkaMPw9/Lb27s4D9yZb8SeztI4
 sf9DD1FxF+2bkRUKoqhvMmsQgA7iF8Lj+xf4LasFQHwNoRbr2fT1Ufip1+voxnG33NVfm2t81
 5Dhav4P8tpeapKVOurKgKIY/b1KVd2qSYDLplGyMlkGEuvisPFzGjnQ41+KlQNDr+A/JMaA1h
 3aO/4JY0TsaR1vzTXnnRMBk9CL3aZ/BrN7wwgPnuD5egEPMjK+zXJk4uWZl7kvSbYUB9bMNyK
 olVpaRebiIU7PlsIQYz59xd3kPCEbvphEwH9i/AXafkzDt0s0IGCx4K8pKk/g/MbdHhm91cze
 uCCCQN2VFsKWnjqr+3BqUEsC5bm+QEmzesZA/KmTzPAn8AEL30th7mlBflcIj3C34svhc18yy
 96blt2HUL1Ep1Y6eb8wa0+enWtfvrBs9gzkWmRaVCaWKQnX5cDu3fO3EgQy+xF/t5el2jaXQu
 cIMDPt9XvPymUqT4XzSd43ItrUgr9B3XZ3oUXBLm433nD0/ZlxUFp6dNGyns0QRARWlsLnn4l
 GzhaXK+GrMGPgmyrVLq2amDBQWPQaGm0F4gasIefjJ0Ei/17fzEGtXfRxRrWDcur8nbwA1jqx
 TTZCTPSktP3BmlG1ck5z1aY6048U/rafQ8kKY2YYwspHpBAzmsSepT0uj3ykOg0qPbhyINJRG
 zNiI4Y75D/cLcH2tLoH1Z7oaoiDn35/21Od5BIw86HHJoBOu9LVbRBOYw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_081430_366054_2925B95A 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arnysch[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [openwrt/telephony 2/2] asterisk16-chan-lantiq:
 Move menu item into the asterisk16 menu
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
Cc: Arnold Schulz <arnysch@gmx.net>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is now the same behaviour as used by the external asterisk
packages asterisk-chan-dongle and asterisk-chan-sccp.

Signed-off-by: Arnold Schulz <arnysch@gmx.net>
---
 net/asterisk-16.x-chan-lantiq/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/asterisk-16.x-chan-lantiq/Makefile b/net/asterisk-16.x-chan-lantiq/Makefile
index 8210c07..55c1c35 100644
--- a/net/asterisk-16.x-chan-lantiq/Makefile
+++ b/net/asterisk-16.x-chan-lantiq/Makefile
@@ -27,12 +27,12 @@ PKG_FLAGS:=nonshared
 include $(INCLUDE_DIR)/package.mk

 define Package/$(PKG_NAME)
-  SUBMENU:=Telephony Lantiq
+  SUBMENU:=Telephony
   SECTION:=net
   CATEGORY:=Network
   TITLE:=Lantiq channel driver
   URL:=https://github.com/kochstefan/asterisk_channel_lantiq
-  DEPENDS:=+asterisk16 +kmod-ltq-vmmc
+  DEPENDS:=asterisk16 +kmod-ltq-vmmc
 endef

 define Package/$(PKG_NAME)/description
--
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
