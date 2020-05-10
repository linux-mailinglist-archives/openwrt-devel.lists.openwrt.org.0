Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DDF1CCB9E
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 May 2020 16:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xj28o8ABDjy237jK+WxbrvcgmsPdx2xVo/bkEJXBpwY=; b=jxlFs2CYbGQxfweoi/2GFEp3AY
	G+vina4HbNon4bYcw4S5tNXWODxEk2n63HshhEhwdkuaYJ6tDVKOSkXRiPA8aTqGF2drr1YjMolFz
	s85QQLVq3J80iihbiBdPJz1KRvsWOi2NHIli6iq4r8KiARebNThny/NKooaOJtfl31WXo2nuG3og9
	rZnuu6jcLSSngT2o/HgjLNeuT40TxARmzc2SbBKuj/2pXaj8dSEgJ/iVkeOcfoz5Zez823Uj6P356
	J2ps+a+7zPFf6abOIxB2PTUNuY5gDEh/22KcDMZsQnu8VNuAmzeEFgrSPf9PvY7h26K9+/KRQIkSs
	v39KEMwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXnGD-0006E5-Gl; Sun, 10 May 2020 14:48:57 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXnG5-0006CP-Cx
 for openwrt-devel@lists.openwrt.org; Sun, 10 May 2020 14:48:51 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MWiYi-1ja5VD2SPA-00X0Rt for <openwrt-devel@lists.openwrt.org>; Sun, 10
 May 2020 16:48:43 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 10 May 2020 16:47:50 +0200
Message-Id: <20200510144754.10751-6-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
References: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:mmFJQFvx02uKBHW0d9uvbK1wvMhrmIJcx/J2d/ykWxCyLUryLum
 HXx6qOn8x46p5Bxf1j12BP6pfji1BxsTIzoIypERM+hyaP7tzFI1KW6ZeJdrrylrQp4kJLw
 a0yw/gUrzt3Fhn/3Ua/V5HmqnuBK4AlgIZ3nm/cFLojzBzLwqy4Xa9bsnacUgka4Y3TyWZL
 jZlrqmwG3UylTPTwvxF8g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EDjW6FMQzQs=:IDgNsQxAzJZ9H3+XzKg1kw
 RN7m2TtVl+3jmE9W7c2UPUg+QhApKPo+iLETqyz9XPPgxO3yr9N4KQGX262Hb2LxGx24HF3V3
 JXYYDF0k/SYs53uyHNfeCJb8Lt8doOnqF/D25C2+l9VlEc0pJVDFJUS9Q27LlsxZBtid5koer
 qJem9YrqaZbbgSbK2tKlfI1Gl7hGFzLBz8FH/+8tYGjEvio2TQfQSiRTtdUP02jUmSHXbckUN
 CpWiysjvTY7LhvrLYujzuzSUh0wWn0DzlPo0KFT2WZ/ExdS14+mXptXnZATkUzzmg4+3yS7Wj
 KkbNZ1zTm9Ur34dKLCp6S3AKlKlf3bdHfJ/QoHNBtxoU3AUl3/myMX9Xidz/FePzcvgPBXrT1
 MKORGqXm2fxpm7wnCRHCOKSl8IklU2XJrrda33iJgqeEQiV/oywhJkHQPrfy3NPBHc1C3hPra
 ejT7e1yhCyaaMjhYgK/ULsO1KQpXGdRj3LUQ5oT0hvu87YFBL8blWKPctk9KjhwzVzVtbHco3
 BV/5JIFP/WhzC+9b/uoGLYuGrRs+mbqcReVuAxJqdicpfNscZUJZUVJoHsk6Bgd/rI/iwDM/6
 1lG67me2RkN7xemBPtqbnO7O4OTlCQPw/Om0j1DbU7F+SOT4FWy+jPp15rIjR2bnS6NcLtIFF
 PizCm7PxJQnOo9ZE0oPlkfHZlQYns6PZULydbut2DKHUZjpy7mpWfIw/lIjoUvcYqiP3d6CCY
 fmCkGCf7MJFeHXcQiJPdxxvYvA4pl+jrArLNpGa+FVoTZ+Hb/lYWup11157n9Uw5HZNeQhBGv
 8/2L3i9kV4QMSWrjWfZEuq40skJwFdm8YQQjMGbz3pjalie4ldg6OKjc7KY+sICHwZdJpKh
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_074849_745469_F1FB5AFF 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 06/10] comgt: replace backticks by $(...)
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

This replaces deprecated backticks by more versatile $(...) syntax.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/network/utils/comgt/files/ncm.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/utils/comgt/files/ncm.sh b/package/network/utils/comgt/files/ncm.sh
index 9aaaa25f37..f5bed7d5e1 100644
--- a/package/network/utils/comgt/files/ncm.sh
+++ b/package/network/utils/comgt/files/ncm.sh
@@ -34,7 +34,7 @@ proto_ncm_setup() {
 
 	[ -n "$profile" ] || profile=1
 
-	pdptype=`echo "$pdptype" | awk '{print toupper($0)}'`
+	pdptype=$(echo "$pdptype" | awk '{print toupper($0)}')
 	[ "$pdptype" = "IP" -o "$pdptype" = "IPV6" -o "$pdptype" = "IPV4V6" ] || pdptype="IP"
 
 	[ -n "$ctl_device" ] && device=$ctl_device
@@ -73,7 +73,7 @@ proto_ncm_setup() {
 
 	[ -n "$delay" ] && sleep "$delay"
 
-	manufacturer=`gcom -d "$device" -s /etc/gcom/getcardinfo.gcom | awk 'NF && $0 !~ /AT\+CGMI/ { sub(/\+CGMI: /,""); print tolower($1); exit; }'`
+	manufacturer=$(gcom -d "$device" -s /etc/gcom/getcardinfo.gcom | awk 'NF && $0 !~ /AT\+CGMI/ { sub(/\+CGMI: /,""); print tolower($1); exit; }')
 	[ $? -ne 0 ] && {
 		echo "Failed to get modem information"
 		proto_notify_error "$interface" GETINFO_FAILED
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
