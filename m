Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBDF1A9023
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 03:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ztsU5Jrg85yqP9JDOcSQCQxANHCcH65Jr2aSajEDKOQ=; b=VwfCLZthJ3dJDG
	JC+KFyrgKh4o88PPAdTYprC3Ss2whqWMaVrs6snMTPAfb14Z1SQTMbAsPPVYHePJ/ANg/EHUVtuo2
	8oh2LCSVSJBLo/OXhIvUjqoiy8c8wcb6S8xqQglZpTubxjPMc7YM72d7fp0VdyKxWxkD185441p6V
	S+ifTCUoqZdoMnMDHNshpHPxYQEMg87ATNJzgx5wA+o9OiDVlmPGzDYowy4yY9xu8aKm3Cc28GHVq
	C3oSBeenmlJOwK12ATEo7vUg9ADTVDsp/ROLGhSKriOXyT2A5s3EVd9c9YmR8BUaOQfgBNqsBrIHi
	SuRGE4Y89e/0sqjpouDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOWbJ-0007Wx-Sj; Wed, 15 Apr 2020 01:12:25 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOWbE-0007WD-Aw
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 01:12:21 +0000
Received: by mail-ot1-x343.google.com with SMTP id i22so1734156otp.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 Apr 2020 18:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l7csY0d3Gu6wxMRuBo9aTHH0YNAFAmcVcfsW/tk7tuc=;
 b=CgO3M20knhZLGtF2ANxBChYzSV8tWn3cG2oXg2/v2Y4XURE8bM5kTfW7Ln1l2udCKr
 mtr6U102jMMQkKC4HheZ1sW5HbZOwQdW989DpRYia+F4/Qd9kUWbeQdJB2c+GUYxg3zc
 glnXEBkwd+UDMHCLiwoow6VRQ/nLmXdlbq82tWORkH5h4JZBUSGF3DLkuKlkUeZMe7VO
 HTcOuP/DHhYR4rwK95BnzTr2OQeXWaL7Txps4jVTYMDXbN4R1oeco5wee9jcv3xh9A6u
 3mNESp4fPCBMGnj8O34mGtf6WRCQLIuQyj8uCcFGKTNwAPYAM3bCsebNHjX3mXT1jGeD
 BSTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l7csY0d3Gu6wxMRuBo9aTHH0YNAFAmcVcfsW/tk7tuc=;
 b=FEBZeQy51bapVnqLLtjiIH6kd/rsPG/fqV3iBTzsNwhuwIG5HV9co0qStgBCMIrHIM
 j2nv5qYzn3UFU3ZNYVqL+U9H0P05dQIItkmvVuGb+abEB02J/cZwsSAK5v1kO71nVinN
 0y56T0o+fICBF9h2c5h4i4u2ET6i+r+yCeBQ6moJrFS+eu6ZS9PWWszAe0ewsGqF6qV3
 dlhFr1/GzIJkQpvN+m+CQgprFW8nwqVJeQASd4PKu6mkHwRJTkbpRP96Vvdp0cu/IK1Q
 2mT20vpdUjEgV5d1E9zi4HG9nyadkGyIXUYrnKGD5Q7hJpavabGkGpr9XxC9T798uCqs
 wwUQ==
X-Gm-Message-State: AGi0Pub1gs8QGi9q9thktEZXlbHBlsXoHOhDJTTq4L8IC//o+scGJG99
 vNPrFLBe0lpq5EExUlmgKjEZD1ECjZdt8EUoVkU=
X-Google-Smtp-Source: APiQypKVx+aaaIa5zXxPEWa1bVxnP/6VBowWIsAWwmtYglTHYpIqL50w1Uv+cVoUfIyGq/UhZUq3nfs5vGJBz0D+HMA=
X-Received: by 2002:a9d:7a45:: with SMTP id z5mr20117229otm.181.1586913137334; 
 Tue, 14 Apr 2020 18:12:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200414064438.1172618-1-gch981213@gmail.com>
 <de8c5c4e-310a-da79-35ce-f94c0039df84@gmail.com>
In-Reply-To: <de8c5c4e-310a-da79-35ce-f94c0039df84@gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Wed, 15 Apr 2020 09:12:06 +0800
Message-ID: <CAJsYDVJQY7twAHHJeg99hAaWeQK2Pbw3c2e2pek1h-i8V3aBDA@mail.gmail.com>
To: INAGAKI Hiroshi <musashino.open@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_181220_400882_71C94035 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH RFT] ramips: mt7621: use lzma-loader for
 all devices
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

Hi!

On Wed, Apr 15, 2020 at 2:23 AM INAGAKI Hiroshi
<musashino.open@gmail.com> wrote:
>
> Hello,
>
> I tried this change in several routers.
>
> In the following routers, kernel 5.4 without/with your patch works fine:
>
> - Buffalo WSR-1166DHP
>    U-Boot 1.1.3 (Dec 16 2014 - 14:38:30) 0.09, Ralink UBoot Version:
> 4.2.1.0
> - ELECOM WRC-1167GHBK2-S
>    U-Boot 1.1.3 (Jan 23 2017 - 20:06:24), Ralink UBoot Version: 5.0.0.0
> - I-O DATA WN-GX300GR
>    U-boot Ver:1.0.4.11 2017/08/31 09:55:19, Senao Uboot Init Ver.1.0.0
>
> But in I-O DATA WN-AX1167GR2, failed to start lzma-loader and hangs up:

Oops.
I can't debug further on this issue so I'll abandon this patch and use it
only for devices affected by the kernel bump.
Thanks for testing!

-- 
Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
