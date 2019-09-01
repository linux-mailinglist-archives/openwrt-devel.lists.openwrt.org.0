Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DB5A49F8
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Sep 2019 17:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3eNtSbiUaXPUy0Q117vl+TT3yltJWdb8mmG1ylDHWwQ=; b=ugxzYhcJ1XdKu0
	xgHnCkXinZRrOkDA0NPOHGYazuv+/GFCkJBdyTkxmsKOtDkusBCovXnETq/neguEQ9L8y5wwVEeqy
	ahVLUHhvPZSJyzl0dOwTYLBlhJh0VpAcbdZFZAk7uuDHFVUuuwPlm2WS17pLoQfnRRauFuDgVDz/F
	eQ/uoWH3DGWA9Hp0H56Q06u94g5ecDIQTldb8k6UPaMmDf9DuMbVQm/QoeFIQZUw53T4DSTmFp8E1
	BgiwzVNfPCL0m7trZXGxlD6al1Ns9qfnrKoQgZDtMcCgXu2sxSi8acbn1SlG652j9Ehum4nIpdA3k
	X3cR7XRP0ar1GLdGR2bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4RaY-0006DM-F0; Sun, 01 Sep 2019 15:16:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4RaJ-0006D3-5P
 for openwrt-devel@lists.openwrt.org; Sun, 01 Sep 2019 15:16:08 +0000
Received: by mail-wm1-x344.google.com with SMTP id n10so1443295wmj.0
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Sep 2019 08:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UsasC+SGKqM37pjKZJo99NHsmkux9NIRkDd62FEcVck=;
 b=PRfjeInY0yk35FixpomWCAqv+2Y6WJIjbKvcWJBWQqzunzrFUOkryQxFMkczjP6cKG
 Wdoh+mEdpgSSQ2PyflwDfHD2fpY7oIbl2fDMj9ek3+FmJDed/e+SWzzujyQyyCtwzUbC
 9CNZv/UVPuUT1NgJuvNw8+t0t5zqwyI1Vgh6VPI6xyUR0ZjsHrJN5cxyD0EC3MtutSjB
 o/HGM6R2iiguvlOzLE3Rfv8UvksPhQk2Sli/6SAEAn5gFYDfkc9fiFhr/7WtW6JPHlKR
 L/Bc7bo0SZ/oOxQJPgSN+USUTQ7oTDisTp+V5NhqSBGqE5aPIV5FYsjjD5m6ppy6FslR
 KfUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UsasC+SGKqM37pjKZJo99NHsmkux9NIRkDd62FEcVck=;
 b=ZA5KZ/tx443lOiIMdb626ZYw520rUHxoULCngpDXIKtg1+V2BEvikDt6q1gbkBkEXX
 M2ofc79F6EWZprUG4doYGtnOQ0tkvBb+MNh0d6+Y8UGLnkDzQnzy8mcVA+rlo9FVSuFA
 k2fzNj3JhPnI33Pj4x6S6EWwpglLBB1j0U0QEhiEIY79v35droYP2+XH15Dn1Zl7+PRR
 qlRcefh+gPLB88kh6PWIyuK13G1MNPiI97DcrEcc0t5mSwP7UkLgff0gYovkyz9luTqM
 MvyiGIN30OAhS8kgW9vyz21ljiTDkpCvsOxeo3DxmokWOiKYxCACrrHvbE7OgFBhkZcl
 zdYw==
X-Gm-Message-State: APjAAAXd6elKEoIdAIvrvbHJVARVbT85isjg7jLvgd1BtxhbwbJI4Sz9
 o2R8QgkL8BmFvTTqaUt0lX4zTOHauTJCk5QNS3A=
X-Google-Smtp-Source: APXvYqyaNAk6PMkd6HQ5GS/BpqlFkYvMuBFWS+MAq8ZkSHfWJ9cM+qpLqpQZGy1Re5er0InJU75MIA9/jgvmSu/0oVY=
X-Received: by 2002:a7b:c651:: with SMTP id q17mr11189874wmk.136.1567350965142; 
 Sun, 01 Sep 2019 08:16:05 -0700 (PDT)
MIME-Version: 1.0
References: <87a7c1qxl2.fsf@husum.klickitat.com> <5317353.KyzfXZn0lP@debian64>
 <CAOiHx=kQjciZq1WQXit4K3hDkcgoWkG02pki+SoAosw9ANpt6w@mail.gmail.com>
 <3922788.WSA6FCIlZt@debian64>
 <CAOiHx=nhCKCEDCUXN86YsceqLridmGO=8ODwkxcJf9w-6z-c_A@mail.gmail.com>
 <87mufomdwz.fsf@husum.klickitat.com>
In-Reply-To: <87mufomdwz.fsf@husum.klickitat.com>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sun, 1 Sep 2019 17:16:06 +0200
Message-ID: <CAOiHx=mLJSsj-u6JEVUUyyTK9+DZ+ERRZ2vRH4sN+nxrUWEC2Q@mail.gmail.com>
To: Russell Senior <russell@personaltelco.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_081607_232710_63350897 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
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
 mail@adrianschmutzler.de, Mathias Kresin <dev@kresin.me>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, 1 Sep 2019 at 13:52, Russell Senior <russell@personaltelco.net> wrote:
>
> >>>>> "Jonas" == Jonas Gorski <jonas.gorski@gmail.com> writes:
>
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

The PogoPlug would also be affected if we enabled
SQUASHFS_4K_DEVBLK_SIZE - the 493G wouldn't be. In that case we would
need to pad to 4k.

But in the current situation, If we just pad to 1k, neither one would
see an increase in LEBs used. At worst will the padding make the
squashfs image fit exactly, but it will not cause it to overspill into
a new LEB.

So padding to 1k is harmless for devices with LEBs of a multiple of
1k, and fixes devices with LEBs that have an odd .5k size.


Jonas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
