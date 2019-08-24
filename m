Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 824F39BEB4
	for <lists+openwrt-devel@lfdr.de>; Sat, 24 Aug 2019 18:10:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ner6PLhWILKhliXlQb+tsyPY91jpxy0wC3Gl2gsta7A=; b=hMtGnCw6NP0Foz
	uU59fukPmmwjEhi3P0GWhA+tMg5QDiUENUbXsDii49wdKb0dVuXRPDGBhSOClZNF6S32pq1QZ5HIE
	uwD0GdP2xbzLyRRtTl4++jsbKuNeE6osmkqg3P0MebqALIJnr0fORH0WbudSffKZ5Ofk5eYSpth+h
	TRH1QiJRQHcfdGi5wo0qwF9nwzscrWmRJxtQ0WQuR4FXv+atto9cvwqO1qtsmcsaWH0tfFM72L/tu
	3COFHmPNcBF8cBH1D+FgPQrtnK9MZV3m4NX4LxVfwZwaxcbBRL6orBp4kJsKcbBEx6HhG3LXlA3MW
	0E9mlwpXUsnQ6MQENOqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1YcP-0000Zs-88; Sat, 24 Aug 2019 16:10:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Yc4-0000D2-BO
 for openwrt-devel@lists.openwrt.org; Sat, 24 Aug 2019 16:10:02 +0000
Received: by mail-wm1-x343.google.com with SMTP id k1so11581826wmi.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 24 Aug 2019 09:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ggaS+ha6flx1LTHjND03BkbwKa/CosCAI2Aq1P1dEsg=;
 b=lVEy9e5ZEB3i1O7P8GL81YnX6DC6PnqRk4ZK154AnpezOU2l0gI+ybu3l6Llb8y36p
 lLC/SX/RsOuZej5slwbu8R2PxHU7t/So+AE2198RXSZZHxug/deyJfwHqcrUll/rt17Q
 wawCh+/jaxOPdPYUY8Rjlu44OWO51E08KXLvyHtp2pTyoxGOY2baYHdZvlykPuLw6xer
 hW3bBLGQMnM60hl3Fqn3FCOJaP1+M8F8IXH2kEU+UAU3FojQOPsQCCGVzbnl/wLqExik
 g5iamvjpdHhpOWMlQFyacG3tueWlw00H+h0RZ6BjzaMpVsSIVdGhbELXGunPEsuXTE4w
 PoFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ggaS+ha6flx1LTHjND03BkbwKa/CosCAI2Aq1P1dEsg=;
 b=Tr9W1UV9EZviGvru3rQUL6K6uRX9VgCUt1hg6NRVcvGCHJoxE6ghcBhrEYt3ip89rR
 J47DarbHERSkc496BECL/P+I8jhvd9Vz69w3xNi6v+lqvMxHgx1sk5ERLki3cas4F2p0
 gj53lcHUYKGBUhzZhAaO9ZjPpaYal12Gr1g205poSa8vehQbnKnvLtcVr1Q+eR8oN7c/
 8bh4Rlwe5cP+Nlg8VX/DGwyG8ls3nHcUSaMxYnsRfdFGZ1K1RD6ZNCC05uSBhLJILHk3
 RzBcqxBGBY5YSXDLj+kARnGha5DtbSWP+5O3E5VL9YZSDV0ktMuBd6bTNOGwk32dRVw8
 45zg==
X-Gm-Message-State: APjAAAUlTzPDTwMipNc/uRp0gm7JYb1afdf+pfuv+i1kHeexVPV8ZSyQ
 CCiLUz46bufJcA15/zrv4y8=
X-Google-Smtp-Source: APXvYqwErzAzedIJUHU1qAXGxNtVSSLjYBzOAEZ6HtFnVOKKeyDG2gFwt0n3dMkytaPEizhtzkfJVA==
X-Received: by 2002:a1c:a101:: with SMTP id k1mr11953604wme.98.1566662998676; 
 Sat, 24 Aug 2019 09:09:58 -0700 (PDT)
Received: from debian64.daheim (p4FD09634.dip0.t-ipconnect.de. [79.208.150.52])
 by smtp.gmail.com with ESMTPSA id n14sm22121786wra.75.2019.08.24.09.09.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Aug 2019 09:09:58 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92.1)
 (envelope-from <chunkeey@gmail.com>)
 id 1i1Yc1-00043y-Hp; Sat, 24 Aug 2019 18:09:57 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Russell Senior <russell@personaltelco.net>, dev@mkresin.me, ynezz@true.cz,
 mail@adrianschmutzler.de
Date: Sat, 24 Aug 2019 18:09:57 +0200
Message-ID: <1619788.jSZVMTGyYI@debian64>
In-Reply-To: <87blwfmn4g.fsf@husum.klickitat.com>
References: <87a7c1qxl2.fsf@husum.klickitat.com>
 <30131992.Ho3CJ5cCL4@debian64> <87blwfmn4g.fsf@husum.klickitat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_091000_414378_365BE4C0 
X-CRM114-Status: GOOD (  37.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Squashfs breakage lottery with UBI WAS: [PATCH
 RFC 2/2] amp821xx: use newly added pad-squashfs for Meraki MR24
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
Cc: openwrt-devel@lists.openwrt.org, jonas.gorski@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Saturday, August 24, 2019 2:18:55 AM CEST Russell Senior wrote:
> >>>>> "Christian" == Christian Lamparter <chunkeey@gmail.com> writes:
> 
> > I've posted a similar message to the bugreport:
> > <https://bugs.openwrt.org/index.php?do=details&task_id=2460>
> 
> I should have filed the bug first and linked it in my patch.
I think it's fine. It depends on whenever there will be a
discussion and where it will take place... But yeah, nobody
can tell in advance how this will go.

On Saturday, August 24, 2019 2:59:31 AM CEST Russell Senior wrote:
> >>>>> "Russell" == Russell Senior <russell@personaltelco.net> writes:
> 
> >>>>> "Christian" == Christian Lamparter <chunkeey@gmail.com> writes:
> 
> Russell> It's mostly inferred from the fact that I saw the error and
> Russell> kernel panic, and glancing at the kernel squashfs code. I am
> Russell> not pretending to understand completely how the squashfs kernel
> Russell> code works, but the position of the error relative to the size
> Russell> of the rootfs in my panic case strongly suggests it was trying
> Russell> to read past the end of the ubi volume.
> 
> Oh, and I got important help finding this from Jonas Gorski. I was
> remiss in not mentioning that.
> 
Ok, Let's add him to the CC then. As well as some of the 
"ramips: Fix and tidy up IMAGE_SIZE #2226" and 
"[RFC] Use DTS firmware partition to obsolete IMAGE_SIZE #2310"

https://github.com/openwrt/openwrt/pull/2226
https://github.com/openwrt/openwrt/pull/2310

crowd. Because this will likely affect them as well... 
But they might not know it. In any case: "Welcome everyone! :-D".

> > What's happening here is that mksquashfs4 is being told
> > through the "-nopad" option to "do not pad filesystem to a
> > multiple of 4K" [0].
> 
> > |define Image/mkfs/squashfs |
> > $(STAGING_DIR_HOST)/bin/mksquashfs4 $(call
> > mkfs_target_dir,$(1)) $@ \ | -nopad -noappend -root-owned \ |
> > -comp $(SQUASHFSCOMP) $(SQUASHFSOPT) \ | -processors 1 |endef
> 
> > My guess is that this affects more than just the MR24 (I'm
> > looking at you too: pad2jffs and various pad-to $value)
> > . I've tried tracking down the change that added the "-nopad"
> > and found it in a commit from 2005 titled: "add some changes
> > from whiterussian to head" [1] [2]:
> 
> I agree that other devices where rootfs is squashfs and lives on a ubi
> volume are probaby also vulnerable to this problem. Regrettably, I haven't
> thought of any other of those devices that I have on hand to test. 
> 
> > | $(KDIR)/root.squashfs: | @mkdir -p $(KDIR)/root/jffs |-
> > $(STAGING_DIR)/bin/mksquashfs-lzma $(KDIR)/root $@ -noappend
> > -root-owned -le |+ $(STAGING_DIR)/bin/mksquashfs-lzma
> > $(KDIR)/root $@ -nopad -noappend -root-owned -le
> 
> 
> > So, this is really old...
> 
> > Question is, should we just drop the -nopad? Since as you
> > established, in the described corner-case (see above)
> > squashfs needs this 4k padding and the generated squashfs
> > could be considered broken otherwise?
> 
> I'm under the impression that the -nopad makes sense for NOR flash where
> the kernel and rootfs are glued together, padding the isolated rootfs
> would cause alignment problems or wasted space in the combined blobs.

Yes, that's the nod to padjffs2. That said,
<https://sourceforge.net/p/squashfs/mailman/message/28307755/> makes
it sound like that apart from the BLOCKSIZE, we also need to PAGE_SIZE?

(I think the APM821XX is a special case, since it can do 64KiB Pages
as well as it's 32MiB SLC NAND that uses 16 KiB erase-blocks. So a
PAGE can span up to 4 pages.

> 
> > (Judging from your
> > message, you went through the kernel code. Can you please
> > share the place where the lack of the padding is breaking the
> > fs?)
> 
> It's mostly inferred from the fact that I saw the error and kernel
> panic, and glancing at the kernel squashfs code. I am not pretending to
> understand completely how the squashfs kernel code works, but the
> position of the error relative to the size of the rootfs in my panic
> case strongly suggests it was trying to read past the end of the ubi
> volume.
> 
> The error comes in the kernel's fs/squashfs/block.c in the
> squashfs_read_data() function. There are a bunch of conditions (at least
> 5) within the function (see "goto read_failure;") that will lead to that
> message being printed.
> 
Well, that's a pity this could have saved a lot of time.

I've cobbered together a patch that deals with some of the
padding issues at "ubimkvol" and "ubinize" time. The idea
is that ideally we want to do the padding when we know
PAGE_SIZE and the BLOCKSIZE/Erasesize (MR24 blocksize in
image/Makefile seems wrong as well...).

But for now, it's set to 64KiB. If this is the way forward
we add enable getconf and get the PAGESIZE at runtime. If not,
we need to come up with something else.
(It's also possible to do some changes in  ubi's block code or
squashfs kernel code to mitigate the padding, but I don't think
the maintainers will even look at it).


Regards,
Christian
---
From 803cab7d585ebb85362357d008067caf645a7f17 Mon Sep 17 00:00:00 2001
From: Christian Lamparter <chunkeey@gmail.com>
Date: Sat, 24 Aug 2019 12:55:40 +0200
Subject: [PATCH] base-files: pad root.squashfs to 64KiB in ubi volumes

SquashFS's HOWTO states in the section "Using mksquashfs"
<https://elinux.org/Squash_FS_Howto#Using_mksquashfs>
that a padding is necessary "for the filesystem to be used
on block devices."

OpenWrt's mksquashfs for the rootfs (which is usually
squashfs) is instructed to skip the padding via the nopad
option because the rootfs will be padded by functions like
pad-rootfs to the eraseblocksize which is usually much
bigger at somewhere 64KiB.

But this is a problem for squashfs as rootfs in ubi
partitions. Currently no explicit padding is being
set and it currently works for the most time because
ubi volumes are always aligned to LEBs which could
be close enough for 4KiB paddings...

Digging down deeper revealed that squashfs excepts blocks
to be up to PAGE_SIZE. This is explained in this bug report
that states that the 4k padding for ARCHs with 64KiB pages
resulted in "attempt access beyond end of device" errors:
<https://sourceforge.net/p/squashfs/mailman/message/28307755/>

This patch changes sysupgrade to follow fstools with its
ROOTDEV_OVERLAY_ALIGN (=64KiB) and aligns squashfs rootfs
filesystem to the same amount, while also changing the
ubinize script to apply the alignment in the same manner.
(More additions would be welcome. Note: ubinize and
ubimkvol don't support alignment values that are bigger
than a LEB!)

Reported-by: Russell Senior <russell@personaltelco.net>
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 package/base-files/files/lib/upgrade/nand.sh | 12 +++++++++---
 scripts/ubinize-image.sh                     | 12 +++++++++++-
 2 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/package/base-files/files/lib/upgrade/nand.sh b/package/base-files/files/lib/upgrade/nand.sh
index fbc2b5c19a..7eb9632a06 100644
--- a/package/base-files/files/lib/upgrade/nand.sh
+++ b/package/base-files/files/lib/upgrade/nand.sh
@@ -174,11 +174,17 @@ nand_upgrade_prepare_ubi() {
 
 	# update rootfs
 	local root_size_param
-	if [ "$rootfs_type" = "ubifs" ]; then
+	case "$rootfs_type" in
+	"squashfs")
+		root_size_param="-s $(( ($rootfs_length + 65535) & ~65535))"
+		;;
+	"ubifs")
 		root_size_param="-m"
-	else
+		;;
+	*)
 		root_size_param="-s $rootfs_length"
-	fi
+		;;
+	esac
 	if ! ubimkvol /dev/$ubidev -N $CI_ROOTPART $root_size_param; then
 		echo "cannot create rootfs volume"
 		return 1;
diff --git a/scripts/ubinize-image.sh b/scripts/ubinize-image.sh
index a18d6dc428..06f4a3b995 100755
--- a/scripts/ubinize-image.sh
+++ b/scripts/ubinize-image.sh
@@ -18,6 +18,12 @@ is_ubifs() {
 	fi
 }
 
+is_squashfs() {
+	if [ "$( get_magic_word "$1" )" = "6873" ]; then
+		echo "1"
+	fi
+}
+
 ubivol() {
 	volid=$1
 	name=$2
@@ -69,7 +75,11 @@ ubilayout() {
 		ubivol $vol_id kernel "$3"
 		vol_id=$(( $vol_id + 1 ))
 	fi
-	ubivol $vol_id rootfs "$2" $root_is_ubifs
+	size=""
+	if [ -n "$( is_squashfs "$2" )" ]; then
+		size=$(( ($(wc -c < "$2") + 65535) & ~65535))
+	fi
+	ubivol $vol_id rootfs "$2" "$root_is_ubifs" "$size"
 	vol_id=$(( $vol_id + 1 ))
 	[ "$root_is_ubifs" ] || ubivol $vol_id rootfs_data "" 1
 }
-- 
2.23.0




---




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
