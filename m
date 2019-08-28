Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA06AA0896
	for <lists+openwrt-devel@lfdr.de>; Wed, 28 Aug 2019 19:35:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cq9RrjowE5GeB8EySwB0UrQ95+wbCX/qjwdIlJRyKTY=; b=PD7Qz425vbveR0
	7pTXc/UVaWZk2iY2EFvPltUIYs9Akv5ausaJNxIq9rBtnljngSmyjQDDDn189bIrPnJBNepi5JcNj
	p8paxtUNOq0NNfhMUJvWyaPDMDdEGsJ5TyfIX1SuBAc2hu2oqURFAPsOfhQEuS2NrZilFxpBKduvn
	9rr0h03fniJ1y6Bw4LqDRGKkXXuetzLzcrMDyiaZ/uiuZyKQqGs5l05Sh1+fFUnERxsfJvtDsEmRX
	/BGbwkVvA1gWaTzkSAN+8K8uvd25luu6U83EkOrSuiLdLH2X7dy06K6iVaSkaUUetDqzJG9qhyLAD
	DWon3UE8cjjd0gpF6hGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i31qU-00084A-A0; Wed, 28 Aug 2019 17:34:58 +0000
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i31qF-00082u-Fk
 for openwrt-devel@lists.openwrt.org; Wed, 28 Aug 2019 17:34:44 +0000
Received: by mail-io1-xd2d.google.com with SMTP id o9so1226515iom.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 28 Aug 2019 10:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ayerscasa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SM7df/ey4gN53L+gRdu/PgbfPqNGhZd+mNeVkpq/gb8=;
 b=GI4e3aqXxRTco2FdN5EjyceC/Hd1O9XRCv5axuK7EGu+R8tAd1FZUoGeoNeBB/AW+K
 aMPktJtrduN8UEq4BfJe2LRk4eR55LTs1mMlDdsJmamGQaS+hegvxWu0dHTStZAvsB2D
 nYWs8vScIvTobdMdZTjPASpiXYTQu9q9fqw/K6RQEoRQ4OOKhNbVXLzL6gHWx0em0B9f
 A0p1Qx/ekzl8mbeprKjV5dQ24bzDzsvZuig5o6Ljn31CzzA9ixen6kaWl0Rbw3jyiFwJ
 P/4tKcgQr/hE2LateAdewu1u0qQG5CQDtguhJvjzFob8yEz8/TFr42XoQFLOaFJK5hq/
 70sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SM7df/ey4gN53L+gRdu/PgbfPqNGhZd+mNeVkpq/gb8=;
 b=BgEWdjYAchRnsUxYJtGpQcBFDa4iid72Jz2PfzrqzakREVdoFXEMkQsdh3gPCzYejS
 xMBF7v0Ri+roymq8ovCzzJRq+ABbWJmQR+A+kMFJ41BFiW9GIoVRpisaEToUmyniTFd/
 f7+HFYg13ap56DfcsWuwWDXthUwBcAXnkQU7cvWe5JZSzV+BDYLszJFLo1Q8eCYMLXss
 utpgDoP2xgwKYOc3Ft+6ZWTvAiAdehN39XyHnfIzKn9j242tOdFbDXONf3HCXmSYT7Mf
 ub8NL7sIY6nL1Rx1yIgF25ZGswSAJuG2SLmtu7GOvVPccTC/XCLI8sSIZ4hCh+uL+VdD
 JHHA==
X-Gm-Message-State: APjAAAX4C0xndHHYFDuX6Cfp87OJnBV7ZgsC2fTso5RIkkxSuDlw2sX0
 /DADpAW/f37pBjosrvrR82rj2794ap/IsYkHePKyeN31Mco=
X-Google-Smtp-Source: APXvYqytooKT8fQPsufxDLS/LvGrwWBTHT43jiSsagh5723zNz5QOFtWxqeHYFo0kY3ErcaDwBWaCrCLvyhhpKzBRQs=
X-Received: by 2002:a6b:8f13:: with SMTP id r19mr5811593iod.121.1567013679182; 
 Wed, 28 Aug 2019 10:34:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ0CqmXJj9tnN65b9MjeEtTBcYkPnQFcWXSHaPPLOP4dE=FsQg@mail.gmail.com>
 <CAALvt2Pb+is9LZzSqv5BmbH6G6A+_LxvpP16==2OsNwk5LT50w@mail.gmail.com>
 <CAJ0CqmXvn23AZy+ONQsvV-bDuLE1pr_=jcOsgcOc++hZ8jMuuw@mail.gmail.com>
 <CAALvt2MVpMh_899tPSTw96=MaZtaehXd3Of3HOEfSWuoQgDkAA@mail.gmail.com>
 <CAJ0CqmWwu-W=AaSrjhe+MNsMBpPj-pWxy0ua-jm=m85XtiEn9g@mail.gmail.com>
 <CAALvt2Pje6Vk3zPRi-o0JCHXf51Eo2YBPmjhMo7HdwQhDgeFUQ@mail.gmail.com>
 <CAJ0CqmUaeWXbFz0_0Jg0m+NGOPGm66WEGA_mHsSRb1dV3+PL_A@mail.gmail.com>
 <CAALvt2MHTuEt8Y_Uwxh6TS1M0y4AD2-iSSccNS1WTfdr1zjQ0g@mail.gmail.com>
 <20190404072034.GA4265@localhost.localdomain>
 <CAALvt2PtubH=5i_Q3afHaATm7HNK16=jH06yivf3tDdmftQ=YQ@mail.gmail.com>
 <20190604101827.GA6510@localhost.localdomain>
 <CAALvt2O8GYDkx9bTEq6D705B6gSD9Q2hC6BoS7BPqF10WacRPw@mail.gmail.com>
 <ddc36b74-f982-33ba-8aff-fbd67a80c738@ncentric.com>
In-Reply-To: <ddc36b74-f982-33ba-8aff-fbd67a80c738@ncentric.com>
From: Joe Ayers <joe@ayerscasa.com>
Date: Wed, 28 Aug 2019 10:34:27 -0700
Message-ID: <CAALvt2M1VQsHEahxp-jT8UMyxhQQy95xH3-YTBv1-4cppzmXWA@mail.gmail.com>
To: Koen Vandeputte <koen.vandeputte@ncentric.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_103443_553192_30E44C5E 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2d listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] ath9k: fix dynack in IBSS mode
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
Cc: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> > initialized the ackto to max:
> >
> > A) avoidance of late-ack state
> > B) not require wpa_supplicant  -- not in use by our community today
> > C) Suspect some conditions, e.g. low SNR Neighbors, do not trigger
> > "late ack" (consistent, with observation of low SNR Neighbors sticking
> > at max ack_to with my changes )
> >
> > flip the algo off/on when new neighbor joins:
> >
> > Intended technique to reset ack_to to max.  If ack_to is set to 20km
> > and then a new adhoc neighbor joins at 30km, this would be a late ack
> > state, and unable to detect.    My early testing results showed the
> > algo off/on would restart the ack_to to max and start the process over
> > with the new neighbor.   I trust I got it right?
> >
> > There are 10s to 100s of users testing this bleeding edge change from
> > nightly builds, and so far, I've not found a failure case.
> > Although, the findings are showing the cases where static setting has
> > better throughput.
> >
> > Joe AE6XE
> >
> >>>
> Hi Joe,
>
> Purely fyi
>
> I just pushed dynack improvements to all openwrt branches.
>
> I also noticed the issues you addressed above, and these patches fix
> them for me.
>
> Regards,
>
> Koen
>

Thanks for update.   Updates on performance observations, I've been
recommending usage of auto settings to the AREDN community as follows:

* best performance gain on Point-to-Point longer distance links (back
bone links).  I saw ~30% iperf improvement results on a 60km 5GHz link
-- ack-to floats up under load.   This was about the difference I
measured on a similar 3GHz  60km link head-to-head comparison between
AirOS auto distance with TDMA and openwrt static distance with CSMA.
(3GHz because it takes wifi noise out of the picture.)  I want to do a
head-to-head comparison again to confirm, but it appears a P2P w/ auto
setting CSMA in openwrt will compare similar thoughput as AirOS auto
distance TDMA.
* good/poor performance for Point-to-Multipoint long distance
settings, up to 20km  range (cell coverage).   If weak SNR stations, a
static setting is optimal.  If quality signal, auto works good.
* Poor performance for short distances, e.g. in the house.   auto
calculated ack_to settings are several km.  Performance is much poorer
than a static setting of <1km.

There seems to be something going on with calculation when 'on the
bench' testing with short distances.   Maybe a bias needs to be
applied?

Joe AE6XE

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
