Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB88A4B3D
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Sep 2019 20:46:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KlmMOtbXxbA0rDF9IF9ElpGF9crqNrjOXTchSJznUlM=; b=e7o+XrahQiJao4
	jIkkvknuHFIiCZ83w5ASK7IIruodabnOTIv22nPFQNvrgnT5k6dlHQsVMBG4aLjVnU6ZpTAYGACin
	/YD6bZjT3stZwqIC5aNH8LcVS/OjG72tXEKyLc6zfhoZ3EmPnzZSpLmlW8azF6msR6lzwJMITyyfA
	ZV9MxU9S/6STvrE0dMO2jowAww36A6Iuc8mjQQuWSdFNEK/ObH9Z3BiOBvccfe6elfsPFZnLKy7CR
	Z9KGAFMph3eUanhtej19f1EvbAqWyumDCLxh1caC2JfZ3DOBK5ATFYDxiAnC51v8nkLYz26VRudLJ
	mLUfJUw+ScF1ugBpV50w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4Us3-0001UH-1N; Sun, 01 Sep 2019 18:46:39 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4Urs-0001Td-FU
 for openwrt-devel@lists.openwrt.org; Sun, 01 Sep 2019 18:46:29 +0000
Received: by mail-ot1-x344.google.com with SMTP id r20so11684551ota.5
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Sep 2019 11:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rP57oXqAyPnKujfd//ozxjc3YJ8uvrc+xhYb/xmQhpQ=;
 b=CLEk5A8t2QMgEd38iTbd5GTaqPGJkAdGCQis8d6fGX6e6jliaEph1cO4EAWYwPAKgN
 yzi7KGj4F6/JeMZHhkCNjLu4WXh3F7gbp91ndQQ67Ar53XpotLkFuYAAOORteRMbx2E9
 3sYBofTkqOAZeOlmXNCI8RvyRJUawU4V0ZoSTyLaMwdGBqd+74OrIB4fA4xRdlBEQXFI
 1/Z1Jh+oZOd0KJR6ojeQSV0yTk1IO+czlp0+vzhlscXJdYodU14QNRrxTdzZg7SAsv12
 pOuYD0hwZ5+enmWaFMpcPF4RRV9MvuD9B93RC/tHRzx6n/FgvVrVTdDGPE7I5R67dIgn
 EQng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rP57oXqAyPnKujfd//ozxjc3YJ8uvrc+xhYb/xmQhpQ=;
 b=kfdiDK9TiFU2/upAY7NWuKl4lkRA+jIf7fL4FTcozUSxODRUQpss3H7eM26wRWbFmu
 hiKGmdYCZWt+qk6Iiu16l92vInQPDJuPS4yXEb8N/EvzcwVR2wBeoIBoEBmMK/bolw/t
 rTlxkWSeyRGvBARYnVCUjrFj526gby/jLtkSgaEARVpGwIBB8h5/vzlRDCZOYKgviAjd
 rkfFDas4gVt8ZLr0vdo/1JHdwfm0n0UZ6HB2oIMUV+MwdMKIybpxdEuFJzkOXoZxStmQ
 SvNAqBDW5Hi8kWgE5Fv6lg/tNMfrXO3kN5ChW340XH5FD6iXgIl7GtQ4bOHXBFgxfQcU
 yKWQ==
X-Gm-Message-State: APjAAAVUaPsk+GE2I4ab3knKI8AHMMi0ZuoOTTyWqTmt+5LNrqLLkgz6
 3CCnmI2u9fjNv3S4yR/xA+ncxHQ6d5DlRzdCBdc=
X-Google-Smtp-Source: APXvYqyREXDO7qdQ7Icb5DL8vri7NiIzm7b0cHsxlc10lmSk14fqUOcZSP81hZVMCmDHTk8gBnY7kooQqCopAnIXpRg=
X-Received: by 2002:a9d:6a1a:: with SMTP id g26mr20348507otn.284.1567363586265; 
 Sun, 01 Sep 2019 11:46:26 -0700 (PDT)
MIME-Version: 1.0
References: <87a7c1qxl2.fsf@husum.klickitat.com> <5317353.KyzfXZn0lP@debian64>
 <CAOiHx=kQjciZq1WQXit4K3hDkcgoWkG02pki+SoAosw9ANpt6w@mail.gmail.com>
 <3922788.WSA6FCIlZt@debian64>
 <CAOiHx=nhCKCEDCUXN86YsceqLridmGO=8ODwkxcJf9w-6z-c_A@mail.gmail.com>
 <87mufomdwz.fsf@husum.klickitat.com>
In-Reply-To: <87mufomdwz.fsf@husum.klickitat.com>
From: Christian Lamparter <chunkeey@gmail.com>
Date: Sun, 1 Sep 2019 20:46:11 +0200
Message-ID: <CAAd0S9BLfnyFdBrO_p0Wgb_Gpi_kJttUen3J4v+wo88w198D6A@mail.gmail.com>
To: Russell Senior <russell@personaltelco.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_114628_521420_99EFA72A 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>, Mathias Kresin <dev@kresin.me>,
 Jonas Gorski <jonas.gorski@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On Sun, Sep 1, 2019 at 1:52 PM Russell Senior <russell@personaltelco.net> wrote:
> >>>>> "Jonas" == Jonas Gorski <jonas.gorski@gmail.com> writes:
> >> It contains a patch at the end titled: "[PATCH] base-files: pad
> >> root.squashfs to 64KiB in ubi volumes" This is another approach that
> >> just deals with the UBI+squashfs issue but works with
> >> "-nopad". Soooooo.... do we all agree there?
>
> Jonas> a) 64k is excessive, we only need 4k (actually 1k would be
> Jonas> enough, since we don't enable CONFIG_SQUASHFS_4K_DEVBLK_SIZE).
>
> Jonas> The referenced issue with 64k page size happens when
> Jonas> loop-mounting a squashfs, since loop defaults to PAGE_SIZE as its
> Jonas> block size. But we never do that in OpenWrt, and we don't support
> Jonas> any targets with that huge PAGE_SIZE - biggest is ARC with 8k.
>
> Jonas> b) it misses the squashfs's in generic sysupgrade images itself -
> Jonas> we need to pad their length as well, to avoid breaking devices
> Jonas> with a sysupgrade image hitting the corner case being flashed
> Jonas> from an unfixed firmware with the old nand.sh.
>
> Jonas> Also IMHO "1c0290c5cc6258c48b8ba46b4f9c85a21de4f875" should be
> Jonas> reverted, for the previously mentioned issues.
>
> Afaict, only devices with LEB sizes of non-integer kilobytes (like the
> MR24 with its 15.5k LEBs) need any intervention at all. Because
> squashfs's are read in 1k blocks, there is a 1 in 62 chance of creating
> a rootfs that is an inopportune size on 15.5k LEBs.  I have a PogoPlug
> v3 with LEBs of 126k, and a MikroTik RouterBOARD 493G with LEBs of
> 124k. Neither of those is affected.
>
> I still kind of like my solution where we explicitly ask for padding for
> devices that need it.

I see, fine.

Tell you what, I'll let the two of you do what you want or not.
My request to the both of you is, that instead of justreverting, please add  a
"why the -nopad has become essentially atechnical debt there". I'm not that
familiar with these devices and their problems, so I don#t think I have anything
more to add.

Goodbye!

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
