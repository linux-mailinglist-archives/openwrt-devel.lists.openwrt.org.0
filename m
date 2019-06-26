Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F7755F63
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Jun 2019 05:05:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qynjKTNSa4gxATGqGN3cciRBoQ1JJ09ch1gHPIeDZQ=; b=KbAxrubeW0qzKH
	H521lkmE0uhSHgroYsENPdKQ2bOFwcYNGo/aphZXFur9nlun42oHoFQkaixW9TyYBDp9/TfheyPGY
	/EQSKiaEH7w5pPZ6BnbI7kbTSMFo9xhZq5QHOgjeE/Nu3smDkUgM5C7HIxXmJjrLsIDktZx5TlJsR
	tIB21fAqulbDC+BpTyi5rWemKSX80taYuTV0Sh4uFdu90AvmxnxoWwvNBxWQzYmPftt2h2nf0Kwnj
	+KZdce3X3p/J4UJ+z4Rx+1KOBtwvcX1W+YYwSRemfwtiT6Qdc8GOceRDvG2LnwlnvGTuIVR5Np+ed
	gqO3rAfot9prkMO6tw4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfyFm-00012Y-MS; Wed, 26 Jun 2019 03:05:46 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfyFS-00012C-6P
 for openwrt-devel@lists.openwrt.org; Wed, 26 Jun 2019 03:05:27 +0000
Received: by mail-oi1-x242.google.com with SMTP id f80so812701oib.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Jun 2019 20:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8MwsbfJin89QcKSEII+xR1DsJgKUwK7i6+nLTHOVS+s=;
 b=BiRkHQ47LSQ73YdtSWA29Gf10RyDeIUUbVK0HK1SJA6IwIQFy37RaQEDt+bF8nHrY/
 mnc1TN9EKKpgxSvs/VBcSpwbXUBkQ0FXEG8H/WHSjc5JODK1w50cm8rl7l5If/1/mPHR
 ORsJbGsZ/pCnhGuCT/U4xL1WRci6GtdtYMEVHGZxVWx351AkiUQfr+1jdMCd9ISc8YGC
 Q6OPNNtIuptH38rK07NSY6E5AKfU9hgS6hYeAMauC77p6pvQ2RIMc8zy5rxWBz8LkD0C
 fs1IJIJfiBsBBj4kxbTcRWOzg/WBUsqc0iXNfDBzCg0+baOl2GKzk4sYCcgGcHhncNTa
 A6+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8MwsbfJin89QcKSEII+xR1DsJgKUwK7i6+nLTHOVS+s=;
 b=f4D/QfPPPh7It0+N5aOTObLHgGfYW+5CBG4U6RM1O3zh5rTp6my2eF4AIfvL9dzK4t
 sVTX1jkCiiEMV/AQieT9AQagyxzEwSRa+w/nnIOzAoWzyxrkZYDni/7wyzDEtzazTMpc
 k5zNEfBuu+xaj32RPgI+GokmhFrhR1T5hRasdJxX5FEhg0iIHPsPXlyGMKykCLvgvXqh
 QS1q1Rueiz7ScLyhEdpjiOtjeqEHrUEksScGw/GEUbIGAxmjeL9DBUyuCmEqsa+qfUWX
 NDrjLlkNfUJQv4Y8TX5VWOgXfTeBJBjMi0CJlSGGlDTuMBSUFAFAHitKutVhb9YQF9oT
 pfvg==
X-Gm-Message-State: APjAAAXuSTgpQZvSCc5NhHQDGbJOAduTciTxeOU8gpFcJy2Xp6M/ThUh
 O1SdmU8gTIZYG3eB4p2anGAv8S2r9pTtL+aiJco=
X-Google-Smtp-Source: APXvYqxMj8IpB7tz3YSjRwEr1MxBX5tkWn2h+GjzaCsVbh2syt5DCy/cXg5xVa+NEneQvrRHtyfT+qAZSgrlDyzLFT0=
X-Received: by 2002:aca:170d:: with SMTP id j13mr309349oii.77.1561518324250;
 Tue, 25 Jun 2019 20:05:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190624123157.2437-1-mail@david-bauer.net>
 <2106121.d8lVLhYgiR@debian64>
 <312a0f5f-d712-dcfd-a07f-c2215d90002b@david-bauer.net>
 <6483537.HxzJLxGeEp@debian64>
In-Reply-To: <6483537.HxzJLxGeEp@debian64>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Wed, 26 Jun 2019 11:05:13 +0800
Message-ID: <CAJsYDVK0UGC46mHG6XcgXWB5CZ6VqETaYsaM0jkv3EfioLGEHw@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_200526_264439_ACC2BA56 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for ASUS RT-AC57U
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

On Tue, Jun 25, 2019 at 5:23 PM Christian Lamparter <chunkeey@gmail.com> wrote:
> Is 10MHz even a supported frequency for the SPI-NOR chip?

It is supported. It's just unnecessarily slow. Mediatek uses 30MHz in
their SDK and all my boards works fine with 40MHz.

>
> I think you can measure the time it takes to read the SPI-NOR and check
> if the KiB/s match with the selected frequency or not.

Did a quick test on my router with 40MHz SPI clock:

# time dd if=/dev/mtdblock3 of=/dev/null bs=64k
251+0 records in
251+0 records out
real 0m 4.98s
user 0m 0.00s
sys 0m 0.16s

around 25Mbit/s


Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
