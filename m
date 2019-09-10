Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B28FDAEE1F
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Sep 2019 17:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H/UFs78+0p6/haAwB8uAoAsofvP0+unS+QGllhbYJhQ=; b=jVglxskRB9gn1bONHlK16hcrti
	qbgQ+HXOgUo05tBmMP6pm+LZrAeCwO8NXeo99JAVDhQhVsnOvBaaysponnrOZkReXN6aPSMJwj7fp
	dWE05gryrM4FBQyafoNViMeA8bSFppSCwsmyLcCHG8lN5/Xxws2a9CXa9YQ+kl6wBKv3sjE+2ETNV
	glaKRDxWZA3/fCNp9VnuvWlB093Q67m1xwaz86BQowmfA5ud5aVKFABcYu3K4M9hZlfCC/AylHdpr
	e82NzhD9fyjG1BPTx2qkExLleN5gYgFLVbnXhXq+3gDo3X5bk1L1uK8UpNxUd8IpgSSPvJoQq/IRO
	ZjHjm4dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hkY-0006Nr-3M; Tue, 10 Sep 2019 15:08:10 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hkP-0006NT-NP
 for openwrt-devel@lists.openwrt.org; Tue, 10 Sep 2019 15:08:03 +0000
Received: by mail-lj1-x235.google.com with SMTP id y5so6011540lji.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Sep 2019 08:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=s9w5agmZwSiF6kQR6B8UM5TyLePmtzc/VspmpiGZgYs=;
 b=OOJzfp12tlTApwxR8UUyKJZoxlQIVmuqHFlb3PiJcNeXbQs/rHlhtiCTkti+ZWWKm4
 MS5YekfTG6hc/AkO+Gfvr0cHbXFn+eNNEa33yQlRnoVUv6Eaey/1BMUaXBf5KKAo8i7l
 bYUrgm3a4D4ivGIaxxyqwcqjr6EAtoJOglM665n5sOnPP0KBVdNr/8oeVlpNxBAKvabF
 GJfiGTF7q1fPCL5Wl8NKatWJ5OG+0K2LIWa4m3nDG5zIwG8yNFFm8QRNoLpdjwq1ZGFM
 xUEzQjpxhsTw5lCt9W8c5Ol5BCunRilNEAyndsPUdBdJGoiAy3LsV+uebfUXu+QpbmHg
 frEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=s9w5agmZwSiF6kQR6B8UM5TyLePmtzc/VspmpiGZgYs=;
 b=lgTyAsXmhyIunbNoMc0OMxqrv2I5sCZsbH/Kn9UxIUDjqcJHdEkGIkQ8Qhl8hlfEb4
 OyoTXPhniVFtcQ5Kld7AcUMXOQX36jeKoPPBu/MJX5EGCE6TboOLXjCSMXHcto9mK4Cl
 foUenKGnl5kvFEi2v587ZR706H4mKZ7J+I0nfNURWwy7cof8deFDQdUcGyiDnFAfBaCI
 //jLcwYqN4o3lfv5mgT/Fw7DkxTDbRdh6EDNiWpHHBSgr/xoJqpWUTAWkXpCeMttY+go
 6Wtl2Gfyqm/qrVFRVmjb/HdAhwy1ZEGbJtw/D4yHY/ieXSq4cWRoqoJGHf1JLVX8Wpnf
 /fsg==
X-Gm-Message-State: APjAAAWPYda3qXPpBl/foPRhVrR1tkuk6rdL/UmpbWjL5QA9AYqguJQO
 R3ODiYZbCWy1FluGf1A2khclJ2qUwfn3ZJCYdDYc5A==
X-Google-Smtp-Source: APXvYqxiATcqE+eMSz+nSrWFxkPuofxdDHYKR4xEIZQZL9S9rSwog9ZlBBWPF+sOk3xBs20ZM7jHrzrdbGSV9EclPVM=
X-Received: by 2002:a05:651c:110:: with SMTP id
 a16mr2550649ljb.101.1568128079524; 
 Tue, 10 Sep 2019 08:07:59 -0700 (PDT)
MIME-Version: 1.0
References: <CA++fYEgurMzJW8BX=ebpyG9jg9iW7kaJ2rd9RMxv3-RCE9ku+Q@mail.gmail.com>
In-Reply-To: <CA++fYEgurMzJW8BX=ebpyG9jg9iW7kaJ2rd9RMxv3-RCE9ku+Q@mail.gmail.com>
From: sven falempin <sven.falempin@gmail.com>
Date: Tue, 10 Sep 2019 11:07:31 -0400
Message-ID: <CA++fYEgkuUyHzXkKC3E7pZBFG3ou56s57r4pwyuONRaeAg+UsA@mail.gmail.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_080801_790347_0EE9D467 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:235 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sven.falempin[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Mouting rootfs overlay help
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

On Mon, Sep 9, 2019 at 12:14 PM sven falempin <sven.falempin@gmail.com> wrote:
>
> Dear reader ,
>
> My Updated image cannot auto mount the overlay for some reason.
> [   10.587382] mount_root: no usable overlay filesystem found, using
> tmpfs overlay
>
> Nevertheless the overall detection seems fine :
>
> [    1.728207] mtd: device 9 (rootfs) set to be root filesystem
> [    1.732987] 1 squashfs-split partitions found on MTD device rootfs
> [    1.738420] 0x000000c00000-0x000001b80000 : "rootfs_data"
>
> # tail -1 /proc/mtd
> mtd10: 00f80000 00010000 "rootfs_data"
>
>
> I probably did not initiliaze the rootfs_data partition.
>
> Can someone point out where it is explained or how to test that ?
>


Solution was to mtd erase /dev/mtd10



-- 
--
---------------------------------------------------------------------------------------------------------------------
Knowing is not enough; we must apply. Willing is not enough; we must do

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
