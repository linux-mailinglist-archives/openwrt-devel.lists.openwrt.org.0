Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A9E1FF2F5
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jun 2020 15:25:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NdLMbLWk/ouYp8gy3+41eRwm9aI+Kmwy2MWlZRqJBGE=; b=mZsxhkD+VY9q+H
	MHJPbqOWZ+HtvAvpt1EPyia6nvJFojpNHCNoSJmbNmXkWWGPku98HckUye372eCy4WIVb9lHSkABz
	OFbRoJPDu6eI37k77hMGLrJ1rlxC1T0TWKWJ9UgLlAzRBwRatlf++Q8/tAD1lLeINi7LAkg870A0L
	N/NLbTvAye6glQ1Hjq34jbSs1mYbUCydXMAMEPo40KDtF1D0+ua24V/B+pWOp6Lg5730xcSbUjbtt
	BJanUdKau8NbZvWtUNpOMZ180fO8XWzpT3hEA5tCC/AjG06IgWZsER3chk9WYqim/HHHzJGjCwmYf
	KMvOLVPk7LQS1NnwlgbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jluXr-0008Ea-LK; Thu, 18 Jun 2020 13:25:31 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jluXi-0008EH-8e
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jun 2020 13:25:23 +0000
Received: by mail-qk1-x742.google.com with SMTP id l17so5431312qki.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 18 Jun 2020 06:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7Y1ezent/cN5dAUFHVreH5VN93lCz1Qd5VL+Psf/bd0=;
 b=ZmLyvRaMGiqIsraw/kVcSAnTdX2fCsmAUknd+FDag+CCWSZgdKCBGewxcIuGdZkHfJ
 vaHMypfHP6c1Uy0jU/wORGlTCxqy+wcZ7X3uFCaYZm1QkVfbwu9aXPGLSXiNWP5jELmp
 eF2D4y0d3sSRAfEBm6boclGBmBXf9uUsjgLMaCbdAfww2RZADQwkUY6wsiU2gQhh3Ak7
 lhxTxJL39ZCUCZ/3U4g3rvB4q97b17jXXiniHl+/Rkb38Z3P1dPLg+Kg1BvCW7eZMSpe
 H92J2qp/a4CkwSmaTZVlz6XaRpifP4OziyPradALELxkXcVHcJK3V0WBIx17ZgcJGSlS
 NonA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7Y1ezent/cN5dAUFHVreH5VN93lCz1Qd5VL+Psf/bd0=;
 b=CWeE6aKm1Sl4myN3hJlGMHAO1YdzytMKABDRflkFQbahfv7eYSR+rVDUDchMWP2Gfi
 sAzAYZMFrhbZv3RLMEVpvENW3xRS1Oqh+6u0sJtV/sRA5Q6P8Pr7Xg8zpPMRCS/UqTqw
 dghEErTpgf+ZD1X9UwoDKTfmkjTd9b445LU1Tng78fZZSrgFtqfm/0deXOxntbytKSzO
 1H5sbFKJFl0AOJ+HsDiimxNXXOe4bSL83UUXhnvGK9/mSRYDLOPiN/fdN3fyfyDtOomh
 YUIB5w2egaOu3m5aISzIw2toH4NyxfF9XRP+Zdpdm4J2pUebeYs9nyrIeAF4A7RLazrQ
 PShw==
X-Gm-Message-State: AOAM530WPLR35ddNnFVpsuQzYhGSGf5Yi53dUsjBBkDU4WNzCy3304vY
 IybguLZfDvhsZoH7Epc64p8I7e2XI0AG
X-Google-Smtp-Source: ABdhPJz3bQImil8H5kYVkHvWJ0xyMq2aViwCMUROKtTYClhxT2hb25gZSZHutvfGCUrKbs9a9GclXg==
X-Received: by 2002:a37:6550:: with SMTP id z77mr3776627qkb.410.1592486720392; 
 Thu, 18 Jun 2020 06:25:20 -0700 (PDT)
Received: from presler.lan (a85-139-207-71.cpe.netcabo.pt. [85.139.207.71])
 by smtp.gmail.com with ESMTPSA id m13sm3300600qta.90.2020.06.18.06.25.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 06:25:19 -0700 (PDT)
From: Rui Salvaterra <rsalvaterra@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 18 Jun 2020 14:16:47 +0100
Message-Id: <20200618131644.3781-1-rsalvaterra@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_062522_306135_623AE49E 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [RFC PATCH v2] mvebu: compile the kernel in Thumb-2
 mode for ARMv7 targets
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
Cc: freifunk@adrianschmutzler.de, Rui Salvaterra <rsalvaterra@gmail.com>,
 hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

(Sending as RFC due to the note below.)

The Thumb-2 instruction set generates denser code, allowing for more efficient
use of the cache and consequently higher execution performance.

Vmlinux (uncompressed) size comparison for my personal configuration (Linux
5.4.46, compiled with gcc 9.3.0 and binutils 2.34):

Pure ARM:
24243392 bytes

Thumb-2:
22102716 bytes

NOTE: This requires enabling a linker bug workaround to avoid the emission of
R_ARM_THM_JUMP11 relocations [1] in modules, which the kernel doesn't support.
Since this effectively implies -fno-optimize-sibling-calls [2], we're generating
suboptimal code. While compat (and in-tree) modules load and run correctly
without this workaround, WireGuard fails to load with an unknown relocation 102
error.

[1] https://static.docs.arm.com/ihi0044/e/IHI0044E_aaelf.pdf (page 28)
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/arch/arm/Makefile?h=linux-5.4.y#n129

Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>
---
 target/linux/mvebu/cortexa9/config-5.4 | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 target/linux/mvebu/cortexa9/config-5.4

diff --git a/target/linux/mvebu/cortexa9/config-5.4 b/target/linux/mvebu/cortexa9/config-5.4
new file mode 100644
index 0000000000..6aff77fda7
--- /dev/null
+++ b/target/linux/mvebu/cortexa9/config-5.4
@@ -0,0 +1,2 @@
+CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11=y
+CONFIG_THUMB2_KERNEL=y
-- 
2.27.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
