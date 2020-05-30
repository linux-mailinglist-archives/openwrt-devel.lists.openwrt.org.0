Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA131E9010
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 May 2020 11:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6o870QsVr4/rrv7q1FjsFpT2+k5uF+AUmP4F1tOSlA=; b=f3XAlPmVh4W9SQ
	G/ST8UPNLrGZrFcy7UEdy8+/HthsWESj1PzaA+LVBT13v6DY4NdXVKuoorlOKNQtmH3XNZyqpV/hZ
	BmOIRikMRjKMQBLN3pjhykQtKjSWEq+2JJ6byLuDefMPjlkPCGKQsJSEADrErLdmGUVq7y8j6qRC+
	k91rSLCBAxtszI7hJ5RB48SZ1bNzVgVyKn8WuR51qwOEQ9KyaD3DMIzI70mxEubo9aAci3EMe9hAV
	T/W0eX4TW6QgI12c3HB3TiWnkdZ3fkJrDLSXhiyPfbxNUcD4sgo69mmdj8u+WN/iuYyW0raHEt6ue
	YjSv/dbmd0/Ui2bpVnew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jexoD-0003e0-O9; Sat, 30 May 2020 09:29:41 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jexnn-0003Fo-N3
 for openwrt-devel@lists.openwrt.org; Sat, 30 May 2020 09:29:17 +0000
Received: from buildfff.adridolf.com ([188.192.133.27]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MtO06-1ir7pw1sre-00up1y; Sat, 30 May 2020 11:29:10 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 30 May 2020 11:28:16 +0200
Message-Id: <20200530092816.1610-4-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200530092816.1610-1-freifunk@adrianschmutzler.de>
References: <20200530092816.1610-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:X4tA6x3Gk9YADNQsL+t3MZYFtv7rfKtMMfJybCFqlIP9MflceFA
 GAbMeIc3DaGPhi7jMi22tAPWY9mcZ9oc7/9Rt55WmYIxB1AU8GH/KL8WCRzN5eaVNlsEcW0
 qLGJJjGYiaB9MEQXdWs0I/uZoe1TdYRSAeTyov08KbTMI561RNymFN3L0lqYkg3ekZZAZ0Y
 /vtEESgty61Fw/moHT5aA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aDVkxwsiMuU=:MrVfTijkYCA3WqX/GfWTn6
 tRCrgMMWQwHqiosqARgBX8idnhimMJxbGvcTeR7haoTTtMITv/XJERbk6MmOv1rXqSOkzt78u
 Bw1mdMFl34kQy8wQWkqCWkvHA285KKhMA5lv1ubvnvP7mCltF5Ry19bamVQ3ucDnFLJv7TB1q
 jzRnwttW08nIK+LFMuOqV26DlIsQIgRYOpzQs72+YMdOePB5K3/8PGlsmwJnwmP+jjx7t0KQY
 udlai6kOgxJNcTTT5+MjrBVQj6Cd2+XMq0zyU2NCj+Y4hHxicg9jqEwqk8Zm55gq7aaNFZuD/
 68owbaWQQcsHN9DF6uMVUuIlKooyN6oYtRFczkX2RKoVvhIMvi5Y3PNhBtaiAc9q0tzSUCdCw
 HhNEg1TY5J9cZDxDQ5fWMM5hHeaLSAcAEpxp3//Djm+XBkSs5t6LOjZvRTvnuFjA+3cMJjEn/
 hK4yFYw9gFd0qB36y0mFHVTdEN9cA/ps4tnBgm0iAhBuGwzqxQVcvdwCdPivBO1BxrLfjU18E
 YlNOsTv+yJs0j1gylYgFjhagrC+8bVh/n8rPhO69y/OAbufYT67H4bIQE5Rb0Ue9NEMhg0nCQ
 tRUZUjhZ4xlTEkwSb8zg2f+sVh6G8W/ApITso9rpnsURkgI5PKMRkipjxjmEV/T+1wjGWpRne
 aNvWLBe5wDiRNPSQoosLtJdMV28nZDl/60NrPWZxJbqRqf6saz3Fb8k1OXxQ5dCFSOPteYIiK
 T7GVdXLNmnA2ONoakmuG0keA/Vx8xoRRCKohg8HCpybxMKVjA1NVpUCHtRBc+jho+ief4TpUn
 wthaJZB8sFjg6IbNjTKzSv7XYUOOs3VXksG8+hOYKHhe04Rsd7uNyN3oNM2uHGBturBcsUl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_022916_038332_F3652BF3 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH v2 3/3] apm821xx: set DEVICE_TYPE to "nas"
 for sata subtarget
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Sungbo Eo <mans0n@gorani.run>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Since DEVICE_TYPE cannot be set per device, just set DEVICE_TYPE
to "nas" for the entire subtarget, which only contains this single
device.

Note that while this looks like a cosmetic change in combination
with the previous patches, this particular patch actually changes
the packages for the device.

Suggested-by: Christian Lamparter <chunkeey@gmail.com>
Cc: Christian Lamparter <chunkeey@gmail.com>
Cc: Sungbo Eo <mans0n@gorani.run>
Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This has been added as a separate patch to keep 1/3 cosmetic, i.e.
it only removes stuff that was not having an effect anyway. In
contrast, this patch will have an effect, so I think it's better
to have it separate.
---
 target/linux/apm821xx/sata/target.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/apm821xx/sata/target.mk b/target/linux/apm821xx/sata/target.mk
index d3af6ef821..43b1aa0324 100644
--- a/target/linux/apm821xx/sata/target.mk
+++ b/target/linux/apm821xx/sata/target.mk
@@ -1,4 +1,5 @@
 BOARDNAME := Devices which boot from SATA (NAS)
+DEVICE_TYPE := nas
 FEATURES += ext4 usb ramdisk squashfs rootfs-part boot-part
 DEFAULT_PACKAGES += badblocks block-mount e2fsprogs kmod-hwmon-drivetemp \
 		    kmod-dm kmod-md-mod partx-utils mkf2fs f2fsck
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
