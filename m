Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1954037D39
	for <lists+openwrt-devel@lfdr.de>; Thu,  6 Jun 2019 21:28:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cwQVNKVt5JSlAKVh03yKGgOUPc8qB1aIUvOd+5pDVZg=; b=B/YIz64Ka6DIihL1omw5PTnYRk
	Qwcw0Z8+/17C2If6bOdVkj/BRMgX/nSr663gQ2FjgLyzU1J6r/1ZeCnC5LvHE7CvHg8tVKcrLrepF
	p/WTi6hwKn8O45+50++ECml00pfixkIM2v5PrcYJWg246i/d9aK69c6qeDm3wwjfBoZJXGsKLotkG
	hRgsV1QXV505qj17ddAnSq+zWysgFQGOTGb+2rdy3Ulvpkj2rqbZXlF59eB7EQ5jckh37wtjvMm5E
	5i+T/4XM2EOFwOVg9ycPS35FbBYqGQ9CUxH7jZ73802IIFuAMj0ukDGN4H0slhtq0z8T8CxINBXm7
	KBE6/baQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYy3h-00035V-Ce; Thu, 06 Jun 2019 19:28:21 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYy3a-000359-DS
 for openwrt-devel@lists.openwrt.org; Thu, 06 Jun 2019 19:28:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id h19so2523093wme.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 06 Jun 2019 12:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=howett-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=ex+qMyxJbySMmogjH0lpt5C3sHmgkV4epvE5HBpLIkM=;
 b=PkbNtXZ1nEIT0ZsJ+4Y2gMGZTOY8JAzkBlBRErSZUaUuv4x4XU/xB+khIuADYp9AId
 j43MptlST9sFE74wX5J4xnZw+2aauSk4ugIGONrDsi2pRXFtpuyDYkLEL6+Gyb5BDuyv
 V5W5kc3My8BxokFMKhqqyHXWfL+e7Sm53nuA4csYtuDUrc45II0+FwR1GCMnqed5S5te
 5Pwt9g4L3aZeOaJz2Ofux5tEjru7eCbA6hdoO+nKvoISL/syh3ToIFD1GKfLiGvF3oJg
 opLsKNbVH34+uNeWYZwuV7B8lmLunx5a7rgpQX6YQxn1hyQhQLK3aoxI05t7SlYfKehA
 Roeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=ex+qMyxJbySMmogjH0lpt5C3sHmgkV4epvE5HBpLIkM=;
 b=YAGs6AvlTxGWisX9tgrFxVbEEYQa6ot3RgEDni9KHLurOiGg7wTqfCR2Imr2Bv2ze7
 sbg8xACoxZ3idEnF/KvYz001NwTWog4Ae0BMXMYj3M/zH+XKStX1pCBS3gW/ju4Y6eta
 XdTSt2Wizk08SbaPErWhRHntVMOBx2kI9NNmjbRfEosJgouZxB+Jy9Vhhq4SeELTr1Ij
 KQZUYcAH1n2AYoNxCSrF0rJKeTieX6HggvTaSWc0ywDcWqm50aIfcc+jogxUaCUkwzfG
 0YzNT6k6UtRRu8yc8gwl5ebYv4UYVmBJjgseMQU3/Nycs3ZDaYcTEdmxOlJ2zNznN8dg
 AWrw==
X-Gm-Message-State: APjAAAWaBtKxCqt2lg5ePnODlHUqDSf8VY/k6Wl9SSdMEpZcBicxRHpk
 62t87UhycLZpuuAb2YpViI4EF5B5K3xqAvuKnkAWoMrhC2o=
X-Google-Smtp-Source: APXvYqxC5QpgC0qcKSlJ1gVHnjUqqbHR+rJXtz2Iy9UTa1WIp88PujKsynvWK/b3Iq+wxmp4Vxu4Ai9+cayI+DBFDsY=
X-Received: by 2002:a7b:c5ca:: with SMTP id n10mr976712wmk.136.1559849290208; 
 Thu, 06 Jun 2019 12:28:10 -0700 (PDT)
MIME-Version: 1.0
References: <a3db69d2fc4b460dcb2e58e2608f7fdd8640c5c8.1559159872.git.chunkeey@gmail.com>
 <20190530100027.GE13432@meh.true.cz> <2839502.UJiEac7TxE@debian64>
 <20190530153018.GF13432@meh.true.cz> <20190602120630.GH13432@meh.true.cz>
 <fe1c4aa1-8423-9b80-7738-e346d4e23edf@gmail.com>
 <CAHMvWa4t4VM0o-Wgg6iZv--UjL6n+Hyt0y65QRxF4sbviVM3tg@mail.gmail.com>
 <f5d2b7aa-18f9-e1e1-8a2a-9c9e303a6ff5@gmail.com>
In-Reply-To: <f5d2b7aa-18f9-e1e1-8a2a-9c9e303a6ff5@gmail.com>
From: Dustin Howett <dustin@howett.net>
Date: Thu, 6 Jun 2019 12:27:57 -0700
Message-ID: <CA+BfgN+3MKUhmbDJYXv_fe17QrHmkwoX+NdrVEJpxYQfM0J9Yw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_122814_505334_357E5D85 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] EFI images for x86
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

I've been running with some version or another of the EFI patches for
about six months now; sysupgrade works fine, and there aren't any
reboot or stability issues that I've seen.
I'd be happy to contribute a review, especially if it helps EFI
support land in master. Is there any desire to move forward with this?

On Wed, Jun 5, 2019 at 3:33 AM Alberto Bursi <bobafetthotmail@gmail.com> wrote:
>
>
> On 05/06/19 07:22, John Braley wrote:
>
> Also tested on an EFI only Asrock J5005-ITX. Builds, writes and boots fine. However since it is not from 18.06 dev and is built from LEDE you really cant do anything else with as luci wont install via opkg.
>
> If the commits can be pulled into openwrt-dev, I can test it on my Gigabit connection.
>
> On Sun, Jun 2, 2019 at 7:59 AM Alberto Bursi <bobafetthotmail@gmail.com> wrote:
>>
>> On Github there is a PR about adding EFI image generation
>
>
> I'm not sure about what you mean with "is built from LEDE".
>
> I built test images with luci, available here
>
> https://mega.nz/#F!HipgRIyS!_VxhEB5nqhU0rpmU4Rr8Tw
>
> since I have built them directly from the PR, you may or may not be
>
> able to install kernel-related packages from the repository.
>
> If you need specific packages in the test image I can include them.
>
> -Alberto
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
