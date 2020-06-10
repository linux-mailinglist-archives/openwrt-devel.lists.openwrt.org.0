Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F079C1F512F
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jun 2020 11:32:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=db8YYkZiXcwVZZzoRN/VeKwoDt+uLN/sTZtUQ948xiE=; b=MvH1ExEmSpWixr
	MFxJx2T1UNcnzF3kDbHOhyELvlwXhs5I8cIF8z5+SwnMQVeOqRLp3FA3msq3s19CcO3eSkPsvQG4t
	5HJjrULnk+oGK+eWRg6zSGQYdVPe/WGrqC89yIdvIHZOa0lBcHAILpMw3VaZXTOccpRpSYRfeDV1p
	obx5XB/3P9bqGPpBttb1dXLLvRGTy2HtALMJXnknx/q98UogzJ9x/EQYB6ifluWXmYS4V4QveclNS
	dSrBkHS4jFeBjHfnCkt+KJjxg6R1kw1JaMlDgyqVK9M+TKNkCL8OKp31+saTqly5bgDfq0yM9CD5v
	AHpJ0NH39ZFI6Dx2LMxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jix5a-00022d-Jn; Wed, 10 Jun 2020 09:32:06 +0000
Received: from mail-ua1-x934.google.com ([2607:f8b0:4864:20::934])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jix5U-00021Y-An
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jun 2020 09:32:01 +0000
Received: by mail-ua1-x934.google.com with SMTP id r9so624326ual.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 10 Jun 2020 02:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e1QfmnnNtVjniV45GJnOJM/xh92cceBlk90IY9fPQaA=;
 b=hPg37iwbMvAy8OysqEqCZcgPu3YruKAuIFXxLZYLwvnLPrTFWUQT+exN1EttkdQiHK
 UgjsC+37DzgSb21gs7jglgQX5IrDEbJo7HsHmHmdaV+BWDNpRn1WfH86BZT5vAUKZQPH
 yrdjTCyNx1+RcDXrvFmec43/z6zKnGepiSVd0AqgdS9LGdbNhBIs+idT+ucNwoI3G6+W
 1K3O0bAfViqvGwZ+vbH7PD+rAOnw+eekW3PwiGDfxRKuIOAQSFvyphkjZZu8l2f8CMwa
 BxBEklI323ZBt0pvyaUsT7OOXA1VeIe3wzh2uRneLn1Cngd8ybCo9swJx0FZ2YDm60/p
 a6mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e1QfmnnNtVjniV45GJnOJM/xh92cceBlk90IY9fPQaA=;
 b=jmOeyIbnx0QcrdGeoOx7Wzjfq+0vcveGzdCKomqolVgmPL0cTruEc4tABrqNDP2guE
 6yUSHRowWPKeUrxWUx2OyeauDddaz+ACQRxTmJ0EZ0jBgNjb8Detn/QdbTTVO/b+e9Ad
 ixy7bhYwE2+S9MK6u89RiFFbhf7/ry9XP86G1/JIpUpO3HW3jsVIaosvk4K/RoQNpIZX
 8uioNBciRl2Ouyf3AhsIVLoOgjbwcKeAcrOtbuTzTbnWGaP9drH21T7wTNseNjkmiC5X
 zBxZVRHs8knvqFYlxHp0iCJTEm89TcHz3x8A6KUUzxJF1AqB8X6GHY7C5xnx8GODt5MR
 jDLA==
X-Gm-Message-State: AOAM532+8FMhKCy7o45m59dZImVLyxvsFYfxM/LVk7WXZ4Fha0lGvmOL
 XgSMc8y8eLsmb2MI6In2leOifIRZq1ZhDKYmLw==
X-Google-Smtp-Source: ABdhPJwTUwUxXWNPjNPQgRy21gldzt0HQjJesICBtDbmAUIN5z39FffdJG8MaTKiLA1cStvN+K8b9lFFjO0dOSkfwaQ=
X-Received: by 2002:ab0:25:: with SMTP id 34mr1718685uai.63.1591781519275;
 Wed, 10 Jun 2020 02:31:59 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbpu1Lw0j9dtXZPmVS+i-OnopUo+zuqtoQLnABQGw-SqQ@mail.gmail.com>
 <CAHmME9r3nPwmUoYYrj0PnUStd1ACSmdFAO4Qv2cZtmiLspOW1g@mail.gmail.com>
In-Reply-To: <CAHmME9r3nPwmUoYYrj0PnUStd1ACSmdFAO4Qv2cZtmiLspOW1g@mail.gmail.com>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Wed, 10 Jun 2020 10:31:48 +0100
Message-ID: <CALjTZvbtjVwpyV+AMX4htssTbwTHV45mQeokUr952D_GbtFPvw@mail.gmail.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_023200_371788_ACE72920 
X-CRM114-Status: UNSURE (   5.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:934 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] wireguard: unknown relocation: 102 [ARMv7
 Thumb-2]
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

Hi, Jason,

Thanks for the quick reply!

On Wed, 10 Jun 2020 at 10:20, Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> Is there some config combination you can stick into the test harness
> to repro what you're seeing?

Good question. :) You're testing in QEMU (which I personally never
used), right? I don't know how familiar you are with OpenWrt, but I
can surely send you my configuration (it's spread across multiple
files, though).

Thanks,
Rui

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
