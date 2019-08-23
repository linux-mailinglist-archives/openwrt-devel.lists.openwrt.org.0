Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA649B7F8
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 23:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vFr/X/mabbxRLPuSmMqYGhitC34umBs+grraFGTtBM=; b=D+DuXPsUIiITGB
	aA5YmkYbQomyIHK5xpYGFRQi+kp60pLviPutTvTy1g/PIoNv4FbF7OV8mLqjQoqqeel9v+pG4qGWj
	LrYSUjxvYYQYHi4XTwDZ9GQiLUyaFRIEUK7T8H7ezcwqRNteXRX+cgN1PlRPRU9Syzw5DxDWOsse9
	dtWTZ6Y1GJkkEkYL6j+C3POz+sVvn+w0Ohmrl15oosuAbZi8a0BCXXJbrTdupvyVntWB0SAw+L5Xk
	QUiYTxiUImBjEpJ2yoYQMlZ4Jg8qj45qyR8I3JLo3K3XiHaTNtv2l3geruq7D3c9KPWVjIGXOfln4
	PuccAOU19E5NX3SlVsvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1GhB-0001nn-Nu; Fri, 23 Aug 2019 21:02:05 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Gh3-0001nR-Oh
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 21:01:59 +0000
Received: by mail-wr1-x443.google.com with SMTP id t16so9781580wra.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 23 Aug 2019 14:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sqLxw0OkslB+bkvFgMKlnV2Ng/z6PBoy8+GIbzmBX9g=;
 b=QvuzOMZzlJp/3uy4knP7g8cYIqDtMJZqHAfPG8gOTXl2LCfvQZMFKNF7LM9q+AzKBE
 TRoAFqDTCoibJwx0k1ib4nfZGiyxo0n9OMUwf1k84375nE4ritxJjotyuIkZanE5CWM5
 HnKBuzOE/t1xZHBFeSN69/pJqy5E8jliTSTpgvnd4G66Rv/viXQiTNShQsXhas3ipX0S
 Xa7cb44dD2LDGpSFEgg2ihhvsMQJSIP4g8H/xe6S8eKhNTFKfqXW4CBI+2YQOn6+PLyY
 z5ew+FIqFzZpBhVki3oVISZP/ifsDXxFIoe8X+z5eqpaZzMaYYNWrEJRqEO/6RovuPoH
 AB8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sqLxw0OkslB+bkvFgMKlnV2Ng/z6PBoy8+GIbzmBX9g=;
 b=gKwN3/dLVARmCkcTRRzw82lrVXJE2sF/tmboW8JXHFqCd1RfvrD04T+TLOE2s1HFK6
 qxr2hCls17bscv1KkzjtY7MptvYIRMc15mk8rGSpUJL95wbvZdVVmnO5CPec2ogzYUXh
 KQunDYZMMUnExnxdgFjMR++k2J0wizVYAgOHlNtP5imvDKPUwKuQU0P9wfcQQ0dF9gme
 Zg49hg9wpsgqL+atGI9B/YXCUpMJb9GvAfbixhHO8lzHqFQ0TFhqM41Q0V5EwsJkP9++
 9J2ftT21UC+Fmlf41HhfqjG3x/49fSVl9YM/NmEcjEvn3O8WRxfdKlk0kYzKR7k6lFcu
 qmVQ==
X-Gm-Message-State: APjAAAWQPj3AyXmh8NlFH5DVQVXJkGse5oMs0jKMI7B+mwFPQvudnIco
 Z6Ed+Uyx1Ly4Gou5z9grnPtYQGZe
X-Google-Smtp-Source: APXvYqy9GS22LtD5Wi3oWLVPZhfGcR53VLTANEMPlkM8ZjU5aD3BYDFuZiSA3aqKPBao3cnowSpWUQ==
X-Received: by 2002:adf:ef48:: with SMTP id c8mr7616043wrp.103.1566594113542; 
 Fri, 23 Aug 2019 14:01:53 -0700 (PDT)
Received: from debian64.daheim (p5B0D7455.dip0.t-ipconnect.de. [91.13.116.85])
 by smtp.gmail.com with ESMTPSA id
 y7sm3249192wmm.19.2019.08.23.14.01.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 14:01:52 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92.1)
 (envelope-from <chunkeey@gmail.com>)
 id 1i1Ggy-0005r2-DQ; Fri, 23 Aug 2019 23:01:52 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 23 Aug 2019 23:01:52 +0200
Message-ID: <30131992.Ho3CJ5cCL4@debian64>
In-Reply-To: <875zmpqxbu.fsf@husum.klickitat.com>
References: <87a7c1qxl2.fsf@husum.klickitat.com>
 <875zmpqxbu.fsf@husum.klickitat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_140157_833359_D18A1E15 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Subject: [OpenWrt-Devel] Squashfs breakage lottery with UBI WAS: [PATCH RFC
 2/2] amp821xx: use newly added pad-squashfs for Meraki MR24
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
Cc: Russell Senior <russell@personaltelco.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thursday, August 22, 2019 1:00:21 PM CEST Russell Senior wrote:
> 
> Using pad-squashfs ensures that the root.squashfs is assigned sufficient
> LEBs on UBI such that all reads of the rootfs succeed, in order to avoid
> read failures and kernel panics.
> 
> This fixes one such kernel panic observed on Meraki MR24 where an
> inopportune-sized unpadded root.squashfs occurred.
> 
> Note: ext4-sysupgrade firmware binaries will build with this patch, but
> they are as nonsensical as before the patch. Finding a way to disable
> ext4 builds for Meraki MR24 is left as a TODO.
> 
> Signed-off-by: Russell Senior <russell@personaltelco.net>
> ---
>  target/linux/apm821xx/image/Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/target/linux/apm821xx/image/Makefile b/target/linux/apm821xx/image/Makefile
> index acfd478755..53192bb448 100644
> --- a/target/linux/apm821xx/image/Makefile
> +++ b/target/linux/apm821xx/image/Makefile
> @@ -133,7 +133,8 @@ define Device/meraki_mr24
>    IMAGE_SIZE := 8191k
>    KERNEL := kernel-bin | lzma | uImage lzma | MerakiAdd-dtb | MerakiNAND
>    KERNEL_INITRAMFS := kernel-bin | lzma | dtb | MuImage-initramfs lzma
> -  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
> +  IMAGE/sysupgrade.bin/squashfs := pad-squashfs | sysupgrade-tar | append-metadata
> +  IMAGE/sysupgrade.bin/ext4 := sysupgrade-tar | append-metadata
>    UBINIZE_OPTS := -E 5
>    SUPPORTED_DEVICES += mr24
>  endef
> 

I've posted a similar message to the bugreport:
<https://bugs.openwrt.org/index.php?do=details&task_id=2460>

What's happening here is that mksquashfs4 is being told through the "-nopad" option
to "do not pad filesystem to a multiple of 4K" [0].

|define Image/mkfs/squashfs
|        $(STAGING_DIR_HOST)/bin/mksquashfs4 $(call mkfs_target_dir,$(1)) $@ \
|                -nopad -noappend -root-owned \
|                -comp $(SQUASHFSCOMP) $(SQUASHFSOPT) \
|                -processors 1
|endef

My guess is that this affects more than just the MR24 (I'm looking at you too:
pad2jffs and various pad-to $value) . I've tried tracking down the change that
added the "-nopad" and found it in a commit from 2005 titled:
"add some changes from whiterussian to head" [1] [2]:

| $(KDIR)/root.squashfs:
|        @mkdir -p $(KDIR)/root/jffs
|-       $(STAGING_DIR)/bin/mksquashfs-lzma $(KDIR)/root $@ -noappend -root-owned -le
|+       $(STAGING_DIR)/bin/mksquashfs-lzma $(KDIR)/root $@ -nopad -noappend -root-owned -le


So, this is really old... 

Question is, should we just drop the -nopad? Since as you established, in
the described corner-case (see above) squashfs needs this 4k padding and
the generated squashfs could be considered broken otherwise?
(Judging from your message, you went through the kernel code. Can you
please share the place where the lack of the padding is breaking the fs?)

Cheers,
Christian

[0] <https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob;f=include/image.mk;h=5d54bc7947e692dacd7b4e4e2e845b0e824bfc30;hb=HEAD#l243>
[1] <https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=0be45c47c09746d42936e61b27d8b80f63880dee>
[2] <https://git.openwrt.org/?p=openwrt/openwrt.git;a=blobdiff;f=openwrt/target/linux/image/squashfs.mk;h=70a85b99ee7445329e5f401c46b9f7707fda0e2c;hp=917a69ab8a1bbc5f652b83ce687b0b31db1b0f3c;hb=0be45c47c09746d42936e61b27d8b80f63880dee;hpb=6e6a04539395c2f22b4f8d43404b40aeefba739a>



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
