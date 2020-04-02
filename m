Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AE519C8B6
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 20:21:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I120pKos0DamqR3V0DbQ/z3R0pwcIaRZHZxq1Ln6RPQ=; b=aOtbWbVj+jDqAe
	rIHCtAWoOi1biIItPfloqQJZh7XOq+WIXJaFR1rt28yo1e2bev3jLJIDDi5mG6fj1ksybPR/CAqb8
	RoVk+HUWvXauHkfcArJ8ZtoYtU4usgJoNpf5tVom+PknTDHrsTyOAX0MRbaZXDvlsCp4R0DM9lHlL
	/LSU/pmfhxLCnZMt6uAJsyRoiqtgCSfObflLcEa7UXsvkwyYx6pC89FrbJ5yOzFdlzUqS+t/fxtLY
	K36IfCXxLmN2Igfhi2EZWu1FmYQKIDLgR7SPc2uHo+L+ioB/6dX6Nsr7dFm3G6zHhsWSq1qkd1c8G
	Ou5vMI5Pzuj5XvF0om7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK4So-0003VX-1d; Thu, 02 Apr 2020 18:21:14 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK4Sh-0003Ux-2h
 for openwrt-devel@lists.openwrt.org; Thu, 02 Apr 2020 18:21:08 +0000
Received: from buildfff.adridolf.com ([188.192.134.31]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M1qfu-1jMGJj3Nqi-002CjU for <openwrt-devel@lists.openwrt.org>; Thu, 02
 Apr 2020 20:21:03 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  2 Apr 2020 20:20:20 +0200
Message-Id: <20200402182020.31043-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:18SLHzYWF3E0x/MDVNHrnGQMNzyBbZwPSw3hxjYLduveYwoA3a9
 BHM97TZcJiX69NkO+FcKx26/US6YP3PUMwn1Z5tiea3JwJZwzD2qf4qtnHVQOEy3cuaXG0E
 s173eR/XJOrVKaVBPZ/cB9x8zlqos6ctzXWyM1f4rvZzJrzjMH2K+/d6tmsfBE3aLU7G9GA
 MRMrsLAH6NoddRX0LR5LA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Kp1KJPNU/MQ=:SGGiFiCTyVesSvkGi1hQxu
 1PKfZoALZbj6CQX6VoWeGjhoqwvYmVRLdy217zuzxBkACZnswQl9GP4wVaB63SUa58iNa2knE
 mL5vrCF7D7IPBGprBuVb1RVqo89Q4NXoucvtSOKeVeGMC6teEJA7y0OH2EZ7teIWbeAIFH2Hg
 7yshC/dmGZ92uLoetvycxay9dUnGrQFgBIBOzKmaPszMEip+xKDtRFqMPIUhogEEdL5u+SwOm
 9AEqqxcMKOT8cRSxYTp/+nztWq33x/mfXSb5DUxLMHbYKJOIgWqtgJZSzMVRfHoCkJGWKoKcE
 YDy5ruBxUjaZoK3FQ/ezPD3Ugp2F/tCa2lZmjFK5yNjpJRWyOD/8GF3X8bZmi2e9O5yr+huE3
 wvCNVe97/4XV4dicRZbHgdpQ/oGT6Nl72TNyOByopDEtZ6rZHd+WOZ/Xxj6K0PIooW6AorSpT
 jvv5p/Fn7/8px96m+kLBO7Aj8uBVGn6NMUZi8hCsUIfaT1xbedTOKxSiFFjRjOO5+/etT/mAM
 YNECljEIMbeqhi2LertaQk3ulxF8KRP2F0T6kd2mES5WjxF78GYkmPoM733yonVF9AiWs+fEl
 nCXKVN7QPTyCkXCkvOx/ue3NrfDBDvT8+94iCQbzcEXop/mNM1oMyzPU4LeZG65f+XsPSroER
 bIbqUgOGqLuXbnjW817Y1YO+mWHNvgDMTeJprC4mH4Sg5kWmFfJRmn1w2UhzNsvYunMGZibcy
 YhFtg2ZNflQcOh1iO/86oNCRgVQNhyqoWta5aqa8IeQaDqbBbMo7OmfmLlSAHHgKRkBBufIo5
 c7kN0EmpjoIf4oh5lYOCBypDXRaCVJzNtB+DJrwhMpKWriS0bWV9Q7xGu3Hij5CjdkEECC8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_112107_417628_40CD5336 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [RFT PATCH] broadcom-wl: fix compilation with
 kernel >= 4.15
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

Since kernel 4.15, init_timer is not available anymore, and has been
replaced by timer_setup. This patch fixes compilation of wl_linuc.c, which
returned the following errors beforehand (line-wrapped manually):

.../broadcom-wl-5.10.56.27.3/driver/wl_linux.c: In function 'wl_init_timer':
.../broadcom-wl-5.10.56.27.3/driver/wl_linux.c:2576:2: error: implicit
	declaration of function 'init_timer'; did you mean 'init_timers'?
	[-Werror=implicit-function-declaration]
  init_timer(&t->timer);
  ^~~~~~~~~~
  init_timers
.../broadcom-wl-5.10.56.27.3/driver/wl_linux.c:2577:10: error:
	'struct timer_list' has no member named 'data'
  t->timer.data = (ulong) t;
          ^
.../broadcom-wl-5.10.56.27.3/driver/wl_linux.c:2578:20: error: assignment
	to 'void (*)(struct timer_list *)' from incompatible pointer type
	'void (*)(ulong)' {aka 'void (*)(long unsigned int)'}
	[-Werror=incompatible-pointer-types]
  t->timer.function = wl_timer;

This should fix build of several devices on bcm63xx with testing
kernel (4.19).

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This is only build-tested!
---
 .../patches/915-fix-wl_timer-for-4_15.patch   | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 package/kernel/broadcom-wl/patches/915-fix-wl_timer-for-4_15.patch

diff --git a/package/kernel/broadcom-wl/patches/915-fix-wl_timer-for-4_15.patch b/package/kernel/broadcom-wl/patches/915-fix-wl_timer-for-4_15.patch
new file mode 100644
index 0000000000..daf3160952
--- /dev/null
+++ b/package/kernel/broadcom-wl/patches/915-fix-wl_timer-for-4_15.patch
@@ -0,0 +1,55 @@
+--- a/driver/wl_linux.c
++++ b/driver/wl_linux.c
+@@ -235,7 +235,11 @@
+ 
+ };
+ 
++#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 15, 0)
++static void wl_timer(struct timer_list *tl);
++#else
+ static void wl_timer(ulong data);
++#endif
+ static void _wl_timer(wl_timer_t *t);
+ 
+ #ifdef WLC_HIGH_ONLY
+@@ -2512,6 +2517,18 @@
+ }
+ #endif /* WLC_HIGH_ONLY */
+ 
++#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 15, 0)
++static void
++wl_timer(struct timer_list *tl)
++{
++	wl_timer_t *t = from_timer(t, tl, timer);
++#ifndef WLC_HIGH_ONLY
++	_wl_timer(t);
++#else
++	wl_schedule_task(t->wl, wl_timer_task, t);
++#endif /* WLC_HIGH_ONLY */
++}
++#else
+ static void
+ wl_timer(ulong data)
+ {
+@@ -2522,6 +2539,7 @@
+ 	wl_schedule_task(t->wl, wl_timer_task, t);
+ #endif /* WLC_HIGH_ONLY */
+ }
++#endif /* linux >= 4.15.0 */
+ 
+ static void
+ _wl_timer(wl_timer_t *t)
+@@ -2573,9 +2591,13 @@
+ 
+ 	bzero(t, sizeof(wl_timer_t));
+ 
++#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 15, 0)
++	timer_setup(&t->timer, wl_timer, 0);
++#else
+ 	init_timer(&t->timer);
+ 	t->timer.data = (ulong) t;
+ 	t->timer.function = wl_timer;
++#endif
+ 	t->wl = wl;
+ 	t->fn = fn;
+ 	t->arg = arg;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
