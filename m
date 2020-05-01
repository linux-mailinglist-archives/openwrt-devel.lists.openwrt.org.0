Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D18D1C1CC3
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 May 2020 20:20:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BQUbKA4fMBK0TLyyvQytJ/oXxzP+tTc5caLx3KiTwk=; b=J5b4B4Yh8aDUqz
	YQnqjdu/AtM49voEM5BaTJVbYARKpFTLjf5FbGwC70pfi2H6zWp6Jr5wxdAEZnEQacG7H1UCqInlB
	+bzu84Rp0TVPH8bVHl3H3thz9dLwKKzgciC0LG9aY8lvy858i5rS0Y2kP6W4iaaxfaHNWwQAVVGao
	D7oJi/kBt/zTCAW/44uhdDDHt8F3U8TA4gNEh/zL0r9yLUT3PQLF6NzFT7JCRyv72R7ilszlTPa0v
	Bod1wzbmYH2W04zvEjiCrozr+kyHjl01cgU3zrisD6c4BVgrO8+0di1bO47AbXMiUeszOCRAUCuk+
	BVWnvqkUKaOhgmdRCmsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUaGw-00071z-HE; Fri, 01 May 2020 18:20:26 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUaGp-00071g-0m
 for openwrt-devel@lists.openwrt.org; Fri, 01 May 2020 18:20:20 +0000
Received: by mail-ot1-x32a.google.com with SMTP id e26so3264095otr.2
 for <openwrt-devel@lists.openwrt.org>; Fri, 01 May 2020 11:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I2D9MIWOU/LBuhp4tgZ+7/JqQPluHCvFcdXLbvqkigU=;
 b=sKf0WEj0XcMvKWgcwGNY7Wgvbfc+T0Hgbwr69Vfxg/4aBRdJWQPZBunD/kKg/vd82s
 y7I+qfLP3nlBjNv5GmbyN+bdEfCu5vJKhICs8keQ0yUD8GBlYbyul/krjkVcVMqnzWWo
 awYBlIhHt2UXLkk6e4HSjABygif5QBcD9WzJynBcmHn/AWqNxeKnxWVUHv/JOcihurY/
 U9VTdKlDlmxjMn1V8+jdR9e9Rn6h5Fij83zovx3UbV8Wd0u5SRzD4/2rFgxbLWyJ1ok3
 ncBtUIlmZ3O4u/tu76LQLvSny3WO6rpGf1U27tNi+KBz4qjoiuRbudaM/GE7RKa5Zov5
 5Sag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I2D9MIWOU/LBuhp4tgZ+7/JqQPluHCvFcdXLbvqkigU=;
 b=QxkdZFCv0sGD/EUnF9fhiQbmrqCiOhUZuDUZEhUY6BtAK4G8c85XcfTF4Xak7joLwl
 9DCPDJF0mM0edsDQKJggvjh8ePaMdnBkH4hlPEtV+bIpyGcLNtzkz6fUpVjouaaFdRhF
 f9Rr/mIu/RIwHbJdHMs9K9jw0PyibbSGZqM8vc2cuNAZYiX5es1f/ygrsNfFWdz765EA
 5qXdfAREJHhxYtiaXtGBMg7xYtu5TL9LrqWuvojdbgnUckk3Hijqse/Bx2TQ3ADgkal9
 rD2iilxn8uO6kcufVoG6bk5n+zw8cAMD8X5n4eyq7sM3zjsfOD7wmgbGjKc0udxjUBab
 /1gg==
X-Gm-Message-State: AGi0PuZR8Iuspt3Z9C5EaJCnNSGVRogwA5f0A3OIINIYzp+U5DjvxLbr
 7/mdOZHLlx2o0S9NUEWoHUq8J9gSfcZM+AJ7wNs=
X-Google-Smtp-Source: APiQypKQSkRqQsZx/ey/IceX4mhnHxVJeQVBtagZL3jT/SC8khdldvHZzsr3r9nbhYMl5T5jpJKh/+gnKw5nIUVTlCY=
X-Received: by 2002:a9d:37c9:: with SMTP id x67mr4483178otb.207.1588357217046; 
 Fri, 01 May 2020 11:20:17 -0700 (PDT)
MIME-Version: 1.0
References: <27522.1588348994@localhost>
In-Reply-To: <27522.1588348994@localhost>
From: Alexandru Ardelean <ardeleanalex@gmail.com>
Date: Fri, 1 May 2020 21:20:05 +0300
Message-ID: <CA+U=Dsru6ZmGXNGiK+VwReQ1OBMbS+UZ9Qx_mDK0=HKox82EjQ@mail.gmail.com>
To: Michael Richardson <mcr@sandelman.ca>, Jeffery To <jeffery.to@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_112019_085808_F7177887 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ardeleanalex[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] building python3 packages outside of
 lang/python3
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, May 1, 2020 at 7:04 PM Michael Richardson <mcr@sandelman.ca> wrote:
>
> hi,
> python packages include ../python3-package.mk, and pypi.mk
>
> But I can't do that from my own feed directory.
> I don't want to copy the file!!
>
> Is there a relative path that would get me to feeds/packages/lang/python3?

long-story-short: no

you'll have to settle for some sort of absolute path if you need those
files from the packages feed in some other feed
if you take a look at
https://github.com/openwrt/packages/blob/master/lang/python/README.md
there's a suggestion:
PYTHON3_PACKAGE_MK:=$(wildcard $(TOPDIR)/feeds/*/lang/python/python3-package.mk)
[ similar can be done for pypi.mk ]

reason for the wildcard, is in case the "packages" feed is not named
literally 'packages', it picks up the first feed where that mk file is
found;
if there's only one, all is fine; if there's more than one, then
[anyone doing this] it's asking for trouble anyway;

now, i've thought [and maybe Jeffery as well] about maybe doing a
helper that makes a short-hand to the python3-package.mk path somehow
[into the 'packages' feed], but there isn't a good reason to do it;
you still need to know exactly in which feed the 'python3-package.mk'
is found; and that helper needs to be done in OpenWrt core; and core
always needs good reasons to be modified;
so, some people do 'include
$(TOPDIR)/feeds/packages/lang/python/python3-package.mk' directly;
[1]

maybe if [one day] these 2 files move into OpenWrt core, things will
be a bit simpler; but I don't think it's very soon, and I don't feel
it's a big problem [anyway], but that's my opinion;

> I tried the whole thing, but that didn't work.
>
> I settled on:
> include $(INCLUDE_DIR)/../feeds/packages/lang/python/python3-package.mk
>
> which I found ugly, but it worked.

yes & no;
you can choose to do a direct include like [1]

>
> --
> ]               Never tell me the odds!                 | ipv6 mesh networks [
> ]   Michael Richardson, Sandelman Software Works        |    IoT architect   [
> ]     mcr@sandelman.ca  http://www.sandelman.ca/        |   ruby on rails    [
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
