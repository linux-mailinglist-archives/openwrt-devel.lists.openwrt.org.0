Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD09715BBAC
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Feb 2020 10:28:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6WYAjAp87NPMy4PIUwqtH6eUlTRd0wuq31E+uqf6fE=; b=uK4pzHbldefQSs
	SzgFtpV8OgQmmRlVleXy7XLOvFabbW8SW2MFRNBwtj4glFL2TqiKLsoQouZ9l+oTNhebbQVhGT1LJ
	oKTJtwJXXD/zVYCVu18vLTIprAY0IdTg7tQt7E/UBvXartNvfjQfbh0uyTwZgqB5V6KyiNeoUZtuM
	ROpjpYMp9a9KmF2XebUggJ1WhURRFxQtvX8ICGex36vbAHSktw7uyK4INJs8q6QK/x9P3qVS1KI19
	/n2Y72hw1TNyWV3PYtqu2HAd/7udVhtZbSe0F18crU7P+yO18Cn50PFERYo93MT9f6JjsxPn1uqFD
	dEc0y51937OMOwwTn/KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2AnX-0001Yx-VY; Thu, 13 Feb 2020 09:28:39 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2AnP-0001Yd-W6
 for openwrt-devel@lists.openwrt.org; Thu, 13 Feb 2020 09:28:33 +0000
Received: by mail-vs1-xe43.google.com with SMTP id a2so3487333vso.3
 for <openwrt-devel@lists.openwrt.org>; Thu, 13 Feb 2020 01:28:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AII38uAJrOfyldPTIw6F2nJi151hQDXb1Pz1XHPtuM4=;
 b=WF+CUrZEvEKMfP3lYxJIf6S0CSV81FiKnZ09AVTPwTuYVNHAMqdpr/OsUWzaM2l4ek
 g2xWqLT8CerM+Djbcz9zQzd7E+ODIIz94+xwFc/8Qd139EuVaBHXg09I8KuXcoFREouf
 qD65PO1CXLNOEq/GbsHbTKUceMfkT2qR+Akua8llpcys4Ny67PeZKchTvopOwcECjDAo
 H2k5W6IDKkX8MWnZopdcIIVO/uxwzyfAzbH2aTPtYyZwKNkMRkolS51FYKV0hNYK6VFX
 CBacF2VMCc4ohyrcuqkdCWVe7CAuf3yTLzsdrPZ+1LSCyB1LYNiLJGMBO/lKt6gMtfi0
 ccLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AII38uAJrOfyldPTIw6F2nJi151hQDXb1Pz1XHPtuM4=;
 b=JgoplRkGh6SWmoQEBpPOoIL/eEgzoEQTYoqmY/3oVL22cBe/0tCrmX8ZKwtfXNN0y1
 HfX5sXUmzLN+XQnXrpt7IbArLiuOt28RI6zmyUbOwZqpkSmlvSSYBXU7/2w11X7DUem2
 Vr//0ucLdd257ayxHridoXK0OIW2lC/sMyPXkGwDwu9FrxX0yJ8yOgq5gF1o9/c78N8u
 Natn0Ydwc1tt/zBMajiZ72ravnPbTR4WnoWGIm2aCDSX/nXtTVJN89bvZuP0to9wM+KO
 VCq8mGfLZ3VP5w/uqbWI31mQY0bmFSLJMpy0bgTLAG6t9V/xvoHfeVlDcO9DXxOMyhQI
 0WyA==
X-Gm-Message-State: APjAAAXYWzj272pCoO1Py88DB1fY6NtGYuGigHyEG810zoYT6DXN5c2p
 ZvvnRFo87Fj6gWdomaSmpz6oX1q6DJI6XXLY9Z+1lrg=
X-Google-Smtp-Source: APXvYqwmdoDXing4bTo8kQI9Enli4Uz9kAhy8Oh1eKDyacG9cxIX16Emc+Dv/0zwkRRYr4NJ78M83VSho39N9OLQigo=
X-Received: by 2002:a67:1983:: with SMTP id 125mr14166655vsz.63.1581586106293; 
 Thu, 13 Feb 2020 01:28:26 -0800 (PST)
MIME-Version: 1.0
References: <20200130200345.31741-1-rsalvaterra@gmail.com>
 <c9cd9283-7a06-72a5-692a-6a88da7110c9@nbd.name>
 <CALjTZvZwq6AeTSYT700vw8y4N-N3h489d47n-VLyfEXTdpuv-A@mail.gmail.com>
 <9074b381-ca1c-1b47-f427-68f616ef1321@nbd.name>
 <CALjTZvYoE-ojg8RGTgUr9UbyHEmxF0D-y2JrxTrRenAVJpfPTQ@mail.gmail.com>
In-Reply-To: <CALjTZvYoE-ojg8RGTgUr9UbyHEmxF0D-y2JrxTrRenAVJpfPTQ@mail.gmail.com>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Thu, 13 Feb 2020 09:28:15 +0000
Message-ID: <CALjTZvaJXCLF1BNNijjrP_nC73_viESPWKYNGMbJXOEAazJ=Pg@mail.gmail.com>
To: Felix Fietkau <nbd@nbd.name>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_012832_036630_6BD53466 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [RFC/RFT PATCH] ath9k: implement kthread
 entropy collection for AR5008 and AR9002 PHYs.
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi again, Felix,

On Mon, 10 Feb 2020 at 15:46, Rui Salvaterra <rsalvaterra@gmail.com> wrote:
>
> As an aside, this WZR-HP-AG300H is running as an AP, at a public
> institution, with 12 STAs connected, at the moment (8 at 2,4 GHz, 4 at
> 5 GHz), without any reported issues.

So, since Tuesday, I've been running cat /dev/random > /dev/null on
this router to stress the ADC entropy collection as much as possible.
Everything's working just fine, though I'm seeing this in
/sys/kernel/debug/ieee80211/phy?/ath9k/reset:

phy0 (2.4 GHz):
    Baseband Hang:  0
Baseband Watchdog:  0
   Fatal HW Error:  0
      TX HW error:  0
 Transmit timeout:  0
     TX Path Hang:  0
      PLL RX Hang:  0
         MAC Hang:  1
     Stuck Beacon: 76
        MCI Reset:  0
Calibration error:  0
Tx DMA stop error: 69
Rx DMA stop error:  0

phy1 (5 GHz):
    Baseband Hang:  0
Baseband Watchdog:  0
   Fatal HW Error:  0
      TX HW error:  0
 Transmit timeout:  0
     TX Path Hang:  0
      PLL RX Hang:  0
         MAC Hang:  1
     Stuck Beacon:  1
        MCI Reset:  0
Calibration error:  0
Tx DMA stop error:  0
Rx DMA stop error:  0

I suspect these errors might be related to the DMA stop sequence
(which you actually fixed/mitigated [1], as I seem to recall having
this issue on my TL-WDR3600), not the entropy collection. In any case,
I'm going to test an image which reverses the stop sequence also on
AR9002, to see if this has any effect. Note that
/sys/kernel/debug/ieee80211/phy?/ath9k/queues are completely clean on
both PHYs:

phy0 (2.4 GHz):
(VO):  qnum: 3 qdepth:  0 ampdu-depth:  0 pending:   0
(VI):  qnum: 2 qdepth:  0 ampdu-depth:  0 pending:   0
(BE):  qnum: 1 qdepth:  0 ampdu-depth:  0 pending:   0
(BK):  qnum: 0 qdepth:  0 ampdu-depth:  0 pending:   0
(CAB): qnum: 8 qdepth:  0 ampdu-depth:  0 pending:   0

phy1 (5 GHz):
(VO):  qnum: 3 qdepth:  0 ampdu-depth:  0 pending:   0
(VI):  qnum: 2 qdepth:  0 ampdu-depth:  0 pending:   0
(BE):  qnum: 1 qdepth:  0 ampdu-depth:  0 pending:   0
(BK):  qnum: 0 qdepth:  0 ampdu-depth:  0 pending:   0
(CAB): qnum: 8 qdepth:  0 ampdu-depth:  0 pending:   0

Thanks,
Rui

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/drivers/net/wireless/ath/ath9k?id=300f77c08ded96d33f492aaa02549103852f0c12

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
