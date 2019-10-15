Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FEED77A9
	for <lists+openwrt-devel@lfdr.de>; Tue, 15 Oct 2019 15:47:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G/3uyfnuyqWxpx/CAC+o3e5IzFckZnP7LmnYa/lVxL0=; b=Kl0AW6a2/u/NYa17G/FzjEfBp6
	pCrdjPkUDtgy5AnXuYTeBnrRmecjWRPxoLx30k6hlAXD1Tt2xBFbejgFRpgJSff39fLYpOEQf3kZ1
	yE2KJukruIvYDe8FD0h5YXpYuEst6FBLApXr/F1myq/7R+AOJeNu1OB6mPyXoIhyIvI32/FMidfD9
	KOf5arfu84of21FFRPQncV8A6B/Enr0zFFTKwg8ZhbmhOVIUTINwPD8pkzfPQY1TK7oeIjzWBP78R
	5Yfg72bWEITuy1CyEXBoT+HXZpg6b9hKSYej7c224eO17eQvekQg2VV0RuLdblUOuKi9xIguinUmg
	2ce9qzaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKNAT-00084y-Mm; Tue, 15 Oct 2019 13:47:17 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKNAN-00084W-NA
 for openwrt-devel@lists.openwrt.org; Tue, 15 Oct 2019 13:47:13 +0000
Received: by mail-lj1-x244.google.com with SMTP id y3so20343790ljj.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 15 Oct 2019 06:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=vep6ARD1EgwC0t5q8r/uzrTzr7rQp/5hJKLJ57+xGsY=;
 b=LuvpW5fAFWrbaeJvqc4QLMVrHkXGqLtIc92RJ1Pao6v6p60MVH2dMikfysyiI3118D
 oQWmxKUTknVghoDIiT0KKmIddkoprhKcTIGbvQIdHmvYluVL4JLF1IDwvHcSfNjst22k
 FBENRYl5pk/HR6LTW3RSbInb+ygcRhi/48wHL+tZ8ixP7Lwy41YFFDS8shpY8W7S9b0s
 q0TMjs8+o9rJ9R0d8mMdveBIkRT30gi4lS0DD10uVrqeF5n9ePyPYzd6Vf0h0wK3NRx0
 4SkZRH1KRfbg1gtUWRRF3QuitJI51Wtqhek/tYMC5S/G8V8gMSoXUOvHrVTNcX1CXDCK
 T6vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=vep6ARD1EgwC0t5q8r/uzrTzr7rQp/5hJKLJ57+xGsY=;
 b=XxJw9/XyADfCzZJlLyJOABL0Dr0wYr/da0ao+kSbsW4ib7QC4jZc+cYu+Y0v7O0dMk
 7L3sgdGij9nHMSCgg19bjMg94f8imhsgXYlnOcadDrvbkxy2y73CfaUJM4qH+qaKTnTA
 We+SEH8UvxZwFh3qGM8DxhWeBtQdO95x5q/FohJ0juUzC6isSoWkLQ8Z5zj6Ir9Fe3se
 IttprFgsuAtfX9jto/moe5pxgl478bv5YyejlHcT5x2DJgnGm2pjCAZyxOct4f5PJplJ
 IH1Itig/bK9yv6DEoA9t6h6VzvpoQgBcaSxHqP6MsAP0Gf+7fR2Dwv3rlRjqg5iL5EhQ
 i+Rg==
X-Gm-Message-State: APjAAAWzkuBwIRB1l+QbxSjVSRW3sTchoDO700yZF0FeWHXnDf+jVc0e
 4KPSFfgNpB/ptifPivkiDI1vFcq5HH5S6P+tJLJFICNNzas=
X-Google-Smtp-Source: APXvYqwasIJFrunMecaEqRktJY18GzvHRczn9UGlC54H9IHNzFdRp0ba7XHSDUKH+X3JTi15PvIh8YndyDSkY72c9cQ=
X-Received: by 2002:a2e:9d56:: with SMTP id y22mr22817031ljj.37.1571147227760; 
 Tue, 15 Oct 2019 06:47:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190409180839.1815-1-ken@miller.ec>
In-Reply-To: <20190409180839.1815-1-ken@miller.ec>
From: Val Kulkov <val.kulkov@gmail.com>
Date: Tue, 15 Oct 2019 09:46:56 -0400
Message-ID: <CABFXWOCbVw1KNSpXPNOCRBDS2x+q694npnz-wnGJPLeOWLD9rw@mail.gmail.com>
To: OpenWrt-devel <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_064711_755405_CAB8F827 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (val.kulkov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] fstools: block: make extroot mount
 preparation more robust
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

On Tue, 9 Apr 2019 at 14:08, Kenneth J. Miller <ken@miller.ec> wrote:
>
> The extroot mount preparation code for r/w rootfs overlay discovery, and
> determining the user-defined /etc/config/fstab location within, would only
> discover overlays residing on JFFS2 or UBIFS MTD storage.
>
> This led to attempts at loading the uci fstab configuration without the
> required /tmp/overlay directory prefix on devices with a non-MTD r/w
> rootfs overlay, and thus failure to find any custom fstab /overlay extroot
> entries on PREINIT.
> (example: the default openwrt eMMC partition layout on the zyxel nbg6817)
>
> Futher, with UBIFS_EXTROOT enabled (fstools package default), and no MTD
> rootfs partitions present, check_extroot would not attempt rootfs
> discovery on block devices, such as the ext4 mmcblk rootfs overlay on the
> nbg6817.
>
> With this patch:
> 1) main_extroot now attempts to load uci fstab configuration from an
>    already mounted overlay, before defaulting to the prefix-less uci
>    config dir when no MTD rootfs partitions are detected.
> 2) check_extroot now also attempts to find rootfs partitions on block
>    devices when no MTD rootfs partitions are detected.
>
> Fixes: FS#2231
> Ref: https://bugs.openwrt.org/index.php?do=details&task_id=2231
> Signed-off-by: Kenneth J. Miller <ken@miller.ec>

This patch makes it possible to mount extroot overlay on x86_64.

Tested-by: Val Kulkov <val.kulkov@gmail.com>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
