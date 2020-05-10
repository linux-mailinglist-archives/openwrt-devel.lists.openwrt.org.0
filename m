Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 789CE1CCBA5
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 May 2020 16:50:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iIcHByFDPSRSSCET4+RxkcpOPy6v5ByP8BXDRnfLrU8=; b=M+5U2MWEYSSgEJa7zbwOmnw3Rr
	4olfSiM2xSMrFomPcnUFYo4y+zASUoJucLLEsj2tXdMvVWmlBapUkAtbXpRroB8lVSAOzNfhLgetI
	SlrGe1arPvyJc7BuGuzxEgJWMGFLyegEr3ZV9HjpoyLMK5/DFbwGN1QkaRj9nBo+RpZLxjHY4tngh
	lw391vnBtJidg/U7poZxGGOh779n3aEJ6V/BrGzci2Np1k6kysNnZVCtEvF7cnKWgfyd5md54FzxH
	k3hP/xzAxfEglfaGAOKsCCAcM630QEec8rYcUe+VSwFErprYH+W9u8i0xB6M+0WZ4u7dhW7NFmZN+
	5hfA2C4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXnHJ-0007qM-45; Sun, 10 May 2020 14:50:05 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXnG8-0006CM-EQ
 for openwrt-devel@lists.openwrt.org; Sun, 10 May 2020 14:48:54 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MS3r9-1jfKgy3W03-00TS4g for <openwrt-devel@lists.openwrt.org>; Sun, 10
 May 2020 16:48:43 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 10 May 2020 16:47:52 +0200
Message-Id: <20200510144754.10751-8-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
References: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:UPVVDsktHmQ1jB7C4ULA9SCZOimgQfpMr2GgHayg3LTSIEc2247
 BJMMrpM/1jtwlriA5EaorSx1G7tjsMy522BiD63pfUhaPmOPDUtrYE/TW2Wh0fdVKyEDA2I
 +aXQ+OO0/BmpoezR9gogjYAvEA8BE4mULXlA6Gof5DvVqqd0vKVfkXYIxaplJTr5ODR4zCu
 vgOcyWrwLuWonK58Lmung==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6h9NcQiCPkk=:gbby8W1wVssCg6Ydfzyl/d
 I6u5rbuRu6NzuipBhNqJBRZ343a1/ao+BOCGRK0riKuhQAKVNe9xg9DPKiYAW3dSMVR3LGZad
 gFqzB6ZUCljsbm1E/JuU5deevEcMuvLBZ6onnqh4s5wq3/+XEqxDwPp+ycDC+V21/xJh3AeQy
 08GRMrHC3O8WQZf6xfEKep6LlKXpSL/fq6z0GTTqwimWULI8XIMHOjxFWF/ST5t8uH9VSfJOB
 WU9Rp+/q5lxNkXg78TmQaz6YYt7NZzdqRWUGqfqfabzZPKVYVywFSKIm65kyZQKffjnBixPHN
 IE6f8NlyCzOrW5jLL7b36bikJofyGGMbvp9ZQ+zLVpf5qoMYP8ivFbJmjyV7S15sc2FUQQa5v
 sTwPU/wNRt84fReD9lZbGhol3JkjRTKOs39bJ2VNJXVgn+DAZlmx+5KD42iP9qVBu4h3sT+h3
 zpvLfYf+FLDnSnuarW/8X9cbkHGTZ8yWw9iPM58Kigs0vpPr3eyAobLpA2ni2XUKe+2bObaPD
 pz1YkqzlXEtQxHg+Map5XX/NI5xTqpYjeBFQ68UcgmRHfJ+MjhUSjyeaTbxWicLwIfww4mNbY
 fxu+nkuiwzL6mc/6jQ1gEBnQE3KAEz6ZgZI+yv2Udj9ozzVjjTW2yVK3CKjpVbh0czR5iIAHk
 EIeutRWBJPSovgUECm8fNjj9G+ENaFrqSadd9WAutEDMXvuY/1FPGH9X5exKeJaf+ybn5xyGa
 2fknec0mMA6yhIpDgEk907dpiJqWIAKdZAp5nHvDDxHMotf9iVWN8FpWooNSGRVMKg7w8Rcsy
 9euYO+mNFL1NaiZRT3XSSwIUNJOqHtPecMwHR4jbPM/tp824esgJUOK8fj9k/SJn4vIS3jN
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_074852_799519_FE6B5C70 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 08/10] wwan: replace backticks by $(...)
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
 package/network/utils/wwan/files/wwan.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/network/utils/wwan/files/wwan.sh b/package/network/utils/wwan/files/wwan.sh
index 1ffb94a92b..9907195e6c 100755
--- a/package/network/utils/wwan/files/wwan.sh
+++ b/package/network/utils/wwan/files/wwan.sh
@@ -58,7 +58,7 @@ proto_wwan_setup() {
 		fi
 	else
 		echo "wwan[$$]" "Searching for a valid wwan usb device..."
-		for a in `ls /sys/bus/usb/devices`; do
+		for a in $(ls /sys/bus/usb/devices); do
 			local vendor product
 			[ -z "$usb" -a -f /sys/bus/usb/devices/$a/idVendor -a  -f /sys/bus/usb/devices/$a/idProduct ] || continue
 			vendor=$(cat /sys/bus/usb/devices/$a/idVendor)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
