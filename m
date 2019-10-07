Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E64CE004
	for <lists+openwrt-devel@lfdr.de>; Mon,  7 Oct 2019 13:15:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OSjLNaHWzP1OyBx4TCvcXCSsLw0Zy3tFY3MmdduCkx0=; b=qfHVATYZJE/gpO
	E0Pvkic8P/gGszxfyt7JkkQtXjM2hNJFEbikiapBQGHe+SXKL3FZxqVwjqWf1ssdvIYyHnb0q099N
	t3aiAg1scoso56W8PW/Xvrn2zRkDDIHDxuD9kFi21VWyrzRjtM2h2qmJbkN3It+tvkv43U7+7JE1g
	Y8JEkljYtw3qVtkUSHmyCeve9w+kz+AXjjn8HndWD1OKVm8CnK20996mBe0r9MhOS3dz0mW4l8Mae
	pJFec0XMIWsnCQXwLzj1B6360ZioBNSEBlCeEpSvTt7RkNZJCmIXac34IJkN0ldVKL2H/QfqVya+k
	6hhwWdDwLpm/kMDkQcQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHQz4-0000aP-Im; Mon, 07 Oct 2019 11:15:22 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHQyx-0000Nm-4v
 for openwrt-devel@lists.openwrt.org; Mon, 07 Oct 2019 11:15:18 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MdNoW-1hiNHG3fvc-00ZQGR for <openwrt-devel@lists.openwrt.org>; Mon, 07
 Oct 2019 13:15:06 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  7 Oct 2019 13:15:04 +0200
Message-Id: <20191007111504.1387-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:X0xSEnVoi4uj1Hs9KSf7L7X0QxNVe8dzlQIgcinnR/dbtWfx9p5
 1r2HMh7OHD6VwsFZ5wk1aMcu3chkyZLnJYBHLIP046krzHmvkC0K5rd0MNEtqeT2vBxJjSE
 Qbp/7XtygnFYvhvwzi0dZaA1FbOaPsfNQkFw1LlWJqRGTtxOB9aWXaBBmrsryQXT/1X2oA2
 CbZjtVMi3XC+T5Q3PArwQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QAhz9S8A+XY=:cgE9Nv4XunSzxb/iS4VYhC
 cGyBcdl9a0NMF5TexQHR8pqqgWFK4ehsRa9pGvzFrV0d6nwq7Ma3LHFpeNwQs9j25tv3J2YQP
 4AGsy+NDBMkgM/ECXb3hHf1GheGnmA5ZptKWvioAeiDEnD8FsPY5PEeaKtpl8pFRDr5iiVnGJ
 fYwRYMDqbEv4OEKdtCMdBmtYFrCrPaRo4S2OpDmVmSEuExW48mSm1QU5+sCAJjAs8IZGQn9VU
 mm7+UepiCqRjKlfJjcI0nYpdWNd4gwLcrehH3lgFUdhuw9lYJ9JH5DTs9h7yTNbSx5jW6YLnz
 YxoSrALOqvAtL0h0BJ7mu6vkhL2OyfEHlfDYOPhRbrS/yf5nfbY1t/wtfUNe1bXmvwZkvauNv
 a5DihK9ECcktwRVyApmypDmfnLv5flqlyDfo7M65t/jSl1/AgKqjCKEsDhNxubmzraZAfv7Uh
 7Z7aZ0G9Gt1iCrYy/tcu5cGeyXD2Se5qIFwqb8AS0+8EUr1dSy6V7o27kmN8f4uInih1HOcFw
 GGflwqt2C4gPsViK+lVU0aYUAHv5NUQc5vzvjTnMwBjjFjngl+MPovo7n3llVp2/629m1gf2k
 odY8CVs9zcXghFHkH2Vn24vSkHrhOnJJNvQLAwbSyyx0yp2YZoM5eUxnw0UxYz0exNWToQeZj
 TKDsefDtRxVb6Cqag5PspLmqzTqk8ct53Vpb0VHcpgThwvd1hDkjMXf67k3g1/eERHUIcQwbj
 DrI1uCKYFAOFQDZJboSjZiHzt25gy8R/H9tgtIIBTq5GjezJRwqMR/1vy5U0uQxWFp59pQDRD
 mjg5AQ2fRzSxCP2fUUzPxFfL78DGQYVb+jJbks1+ga0GtllIV77A+DmmMackhB8zuXPEHJsLT
 nq2scExTXg3tbMu35IZQZtYmTgG3+ZEG3iJW1PBZg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_041515_482297_8BC2C565 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] ipq40xx: add label MAC address for
 FritzBox 4040
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

The CWMP-Account on the device's label contains the eth0 MAC
address.

This only changes 4.19 files as label-mac-device is introduced
after 19.07 branch, so there won't be a 4.14 release anymore.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

Resend, so DTS approach is v2
---
 .../files-4.19/arch/arm/boot/dts/qcom-ipq4018-fritz4040.dts      | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-fritz4040.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-fritz4040.dts
index f9508cc460..b2a32946d9 100644
--- a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-fritz4040.dts
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-fritz4040.dts
@@ -14,6 +14,7 @@
 		led-failsafe = &flash;
 		led-running = &power;
 		led-upgrade = &flash;
+		label-mac-device = &gmac0;
 	};
 
 	soc {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
