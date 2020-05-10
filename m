Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF961CCBA0
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 May 2020 16:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SNgnvE5sgUEmLMXpFoG9EPqN/FHQpm7DgkKywLBn2Dg=; b=agJ+BjydsX0Jf7
	Q2A8LQF5dtC6fc030t8FatHxqNnDD2lD8FioPqJoTU0oOZ/k9mDmvXny2RFAWRyoagHlzc7m/f5g5
	r7FANkGXidfA4D44IqaIiNGMoK5/svsRz/ceR8ZyaocjBtjq3l5f1p5Rm5iB6LFD65nsu0J0yFGG3
	Qm179B5Q+tNtqFKmriFPD/b/QklfLX2yZetoUIeqR0lyz5zct7K8zjQgQUZ52xXpQVJHzKOUukHKU
	irjCahm95cMXwsL9gH4URfZcg3kc9svwDvcIacM6++93O9B2qZ35SUELcvKwg0394dpVGhrlNe/eg
	NnPAU6f612zRAhG7vMQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXnGW-0006bc-T6; Sun, 10 May 2020 14:49:16 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXnG5-0006CJ-D0
 for openwrt-devel@lists.openwrt.org; Sun, 10 May 2020 14:48:52 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M2fDr-1jXWfl3lh1-004GFC for <openwrt-devel@lists.openwrt.org>; Sun, 10
 May 2020 16:48:43 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 10 May 2020 16:47:45 +0200
Message-Id: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:ftqMx6clXMuYMiTlYL5zyM0njKudBD5qLuQx3T+/3dU1k14WMRk
 88uCP01Zb2CA4A1N4rEw0wQER41B6Pp3Zo1QvkaIPu9SdCRmCffSR7anYQpN3EZeax2+bYH
 bJIS3bY7GI2eia0kIUx0nYPd+Cn+bn1WS5Ng1SZMXUVuwZv5QbNhMdNPPwkxhQhIeP4QGID
 cBxm8Sk8jJ8I8KgigL+7A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vQAyh131LFg=:/XM5MoytUx9LgLKcq4liUW
 BawP3JBknYbtmPZ61O4ek0w5A/h1I7W3/8C2aeZ0WD5uUycp2M2jadtHHx/puvS90nMkjWN8z
 sXGRJ2dKc+rI/PpaNpRrevEMFk8ONHfZRYlISYpLOKUoiobTBGL/tzBWovJFiTcpaE37SnSM7
 3JN8nzY6zdKM5f6fPiS5O6Yo+sFt0f9X5ZW0KgP754ZUbyOZU+PwsPT1c2p+pR4Jc+hC1RPwg
 0b0JXnrhIlSBardWY9YyVfcYCrgImP/0/94DivH0KCo49TFKNEHp8KaNhgn+ZVRgvepAo9pjC
 k1m3KuBFtBW3GusFkbODbu3SyU4ANhQZ+yrdyjowRkrD/9pB3kgcMWlJxjPN/Jnfe/We4qcyg
 PbPZDQ28YnkmEHMETnLEmU9293eFJ4OdSe123RX/QEQ4N6liA6pRmB6oVVTp1L1XNPQpa5Dtb
 qH9+GvsROCkDjLNHufrytuE3W03dhJy7hTFN/k7Q1zunrFUEGgZLriIhzUcjhYOb5eGLa40+v
 qZwgu4CSnO/oUt1LN3dIFmQul73a7veveHDMm7vb4Qw4S5FtHu7mdRG69fGMSt+dbjR21rEHD
 PAqLXfDSakZ0YKMTJJBFG7nUeJkIFysdiQmb79LRJt9KT7QkwPLmC2wjqkMznMmsYpp8o1hFZ
 CIM5n8GngDI7LDT1jPod2ZYIlT5OA+gWQtgnaKND1J48YixgTBoLwupVWYnCT6FGncbgkV8WB
 ZX3AHpiDhkG69vrFLrb2scEpH0eDiZYR3QnCnV3lbF4fR3Tv8QlqNlUbedQAxc07mDwvJJy1H
 Wd7HAuyqqarZDlfIeFDEkwCxRiEDM5TLnw+x5HnB2BsAeWDrW11UilV/HxwVvsPPisSZ7zC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_074849_749509_79814033 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.126.134 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH 01/10] ltq-vdsl-app: replace backticks by
 $(...)
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
 package/network/config/ltq-vdsl-app/files/dsl_cpe_pipe.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/network/config/ltq-vdsl-app/files/dsl_cpe_pipe.sh b/package/network/config/ltq-vdsl-app/files/dsl_cpe_pipe.sh
index 30393b281e..9002b7b316 100755
--- a/package/network/config/ltq-vdsl-app/files/dsl_cpe_pipe.sh
+++ b/package/network/config/ltq-vdsl-app/files/dsl_cpe_pipe.sh
@@ -12,7 +12,7 @@ esac
 #echo "Call dsl_pipe with $*"
 lock /var/lock/dsl_pipe
 echo $* > /tmp/pipe/dsl_cpe${pipe_no}_cmd
-result=`cat /tmp/pipe/dsl_cpe${pipe_no}_ack`
+result=$(cat /tmp/pipe/dsl_cpe${pipe_no}_ack)
 lock -u /var/lock/dsl_pipe
 
 echo "$result"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
