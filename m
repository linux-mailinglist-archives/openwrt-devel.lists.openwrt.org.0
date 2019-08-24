Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA349B979
	for <lists+openwrt-devel@lfdr.de>; Sat, 24 Aug 2019 02:19:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Tm6noFM1gbia4hfSEtIjAfKNXhnF4mxAjstSg3aubg=; b=TGSN0teu29bKef
	ayduc2wocxtsTIzrIWnS7l49s7rHtX9CK5rPMbx1PZF4lZiHsWfgj55tLxTYgDnUoMI7ZTL6b9QyX
	15jgrZisKlcCtsqgQmB8Tii17IG2l8WRvVb9bg512H4ejKxUTNB6KZmpcJiTWUfGnEPxNqBGtnEGB
	/xnw7xC9tgOxbZuxW9PF13jj0f3A8qbnzomy5Ipzj4bf3A1tUSJ6QpfnMNJf9zBdsWuxxQO1k9X19
	E608j82j2c3+8TnI+JwSzDstrqMDilpQEbV1FGZT3pycxI9gjHQ9emceGfTnLzNx4t5FW4522HBXf
	aiKB9cCwO3KacP8x/Gkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Jlq-0005SI-5q; Sat, 24 Aug 2019 00:19:06 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Jlj-0005Rj-Pz
 for openwrt-devel@lists.openwrt.org; Sat, 24 Aug 2019 00:19:01 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id AB20EA611E0; Fri, 23 Aug 2019 17:18:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id BBBC8A610F2;
 Fri, 23 Aug 2019 17:18:55 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: Christian Lamparter <chunkeey@gmail.com>
References: <87a7c1qxl2.fsf@husum.klickitat.com>
 <875zmpqxbu.fsf@husum.klickitat.com> <30131992.Ho3CJ5cCL4@debian64>
Date: Fri, 23 Aug 2019 17:18:55 -0700
In-Reply-To: <30131992.Ho3CJ5cCL4@debian64> (Christian Lamparter's message of
 "Fri, 23 Aug 2019 23:01:52 +0200")
Message-ID: <87blwfmn4g.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_171900_117843_692278B4 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

>>>>> "Christian" == Christian Lamparter <chunkeey@gmail.com> writes:

> I've posted a similar message to the bugreport:
> <https://bugs.openwrt.org/index.php?do=details&task_id=2460>

I should have filed the bug first and linked it in my patch.

> What's happening here is that mksquashfs4 is being told
> through the "-nopad" option to "do not pad filesystem to a
> multiple of 4K" [0].

> |define Image/mkfs/squashfs |
> $(STAGING_DIR_HOST)/bin/mksquashfs4 $(call
> mkfs_target_dir,$(1)) $@ \ | -nopad -noappend -root-owned \ |
> -comp $(SQUASHFSCOMP) $(SQUASHFSOPT) \ | -processors 1 |endef

> My guess is that this affects more than just the MR24 (I'm
> looking at you too: pad2jffs and various pad-to $value)
> . I've tried tracking down the change that added the "-nopad"
> and found it in a commit from 2005 titled: "add some changes
> from whiterussian to head" [1] [2]:

I agree that other devices where rootfs is squashfs and lives on a ubi
volume are probaby also vulnerable to this problem. Regrettably, I haven't
thought of any other of those devices that I have on hand to test. 

> | $(KDIR)/root.squashfs: | @mkdir -p $(KDIR)/root/jffs |-
> $(STAGING_DIR)/bin/mksquashfs-lzma $(KDIR)/root $@ -noappend
> -root-owned -le |+ $(STAGING_DIR)/bin/mksquashfs-lzma
> $(KDIR)/root $@ -nopad -noappend -root-owned -le


> So, this is really old...

> Question is, should we just drop the -nopad? Since as you
> established, in the described corner-case (see above)
> squashfs needs this 4k padding and the generated squashfs
> could be considered broken otherwise?

I'm under the impression that the -nopad makes sense for NOR flash where
the kernel and rootfs are glued together, padding the isolated rootfs
would cause alignment problems or wasted space in the combined blobs.

> (Judging from your
> message, you went through the kernel code. Can you please
> share the place where the lack of the padding is breaking the
> fs?)

It's mostly inferred from the fact that I saw the error and kernel
panic, and glancing at the kernel squashfs code. I am not pretending to
understand completely how the squashfs kernel code works, but the
position of the error relative to the size of the rootfs in my panic
case strongly suggests it was trying to read past the end of the ubi
volume.

The error comes in the kernel's fs/squashfs/block.c in the
squashfs_read_data() function. There are a bunch of conditions (at least
5) within the function (see "goto read_failure;") that will lead to that
message being printed.


-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
