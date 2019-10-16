Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 440BDD9BC0
	for <lists+openwrt-devel@lfdr.de>; Wed, 16 Oct 2019 22:25:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJ7/8Ai1QEGEU/gZY/hxM9UgZ9X2TgJt0vnF88xw+Vw=; b=OmuhgLsLaHVIRw
	J20qqtYQZeHaz4QnF9kyKUcYbpb24l0KYze6tWD3VvTAQQfONvIiJtRvjPhq1zqmYCdej89IYfU1x
	G7fxdhGvdcsCxfXsYhTgzhkJzPowH3QY1GBscgKoiAwv5DytQeMggLG4t98iZQ+Er5MCIXQ4HQhFk
	/tq4vxC5Lz46dydlTsMw2lmrmuuwrCp6NOmwKFKQ3/F0be9RaAOcoBpfQfuDsSyQXvCTBOOc+UyrX
	xcRtP3pJRME6O7pGVQKrZmsG+bTRSjCn4HzBmm2g0r+X8QZbWshhtMIvyV8rTufypiTZcNCd/Wx28
	3GPczyasQvhL9EImlxvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKprK-0005q1-12; Wed, 16 Oct 2019 20:25:26 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpl4-0005kh-6F
 for openwrt-devel@lists.openwrt.org; Wed, 16 Oct 2019 20:19:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1571257130;
 bh=IEZUwFrYZrckbR0OvJEmSyo7jcnUiFXEAgbmBjx6D+U=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=GBHh2k7qpq8dDMLf32CE4ufHxm+n1peTsfTKGVHWHKjcU+bCmxN89mAm6bAERkaQJ
 gIQGJdgUI6SRdSqD/4AYDhsRncj42gUozGdJ01wyEFIfb38dRzqmSZ/V5XbLU2vgqF
 QXYirWHLwcHmkLkopKmos9h1bN+pSJ+N0ppNNga8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from hms-beagle2.lan ([77.10.65.115]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MhD2O-1hpbXk27pi-00eO1k; Wed, 16
 Oct 2019 22:18:50 +0200
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <f1a294f8-34bc-87c8-6af2-ba46f8f4169f@wwsnet.net>
Date: Wed, 16 Oct 2019 22:18:49 +0200
Message-Id: <4B797D9E-CDF2-40D9-A54F-2C0DA7C76BD0@gmx.de>
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <87v9svtvrl.fsf@miraculix.mork.no>
 <fc77391e-68d8-1e3b-b86c-b01750cd183f@mein.io>
 <bff0c30a-023f-c1b0-ede9-efe46152ddc5@wwsnet.net>
 <CAOdf3gpLvNFJd4iQpsaTg+-C16KuOjteLgCH1bNGyPj3Eq09_w@mail.gmail.com>
 <f1a294f8-34bc-87c8-6af2-ba46f8f4169f@wwsnet.net>
To: Jo-Philipp Wich <jo@mein.io>
X-Mailer: Apple Mail (2.3445.104.11)
X-Provags-ID: V03:K1:OeE41Dqb/bJIpdRDjIPGsMglztyQj4LFZayCITcfQoh4ih90rf1
 ZlTzLPDH/EK6MCEyM90UsrPxrbZCBHPi8E9CuXloIdhOW8D7rsFvoXqEo3ET9DJ0thh6Nod
 1tWL/cVBdcd1mFpyK3afrOgo/HMiTclx5Bn5urZTFyhw1Tq33xDgVLT/smfbRUtq5kVAcvz
 i2lHF1ODW3ewGZvnaoIDA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nfjtNGtc33w=:rp2acShF6qeY9WmWI2TFUg
 EjmIAPcLZM020t9wZbGLq1eajcShJgFdema9dz7QKIU0UraGHEzYzunOk2P8EgKmOybENX1Bw
 4BxO1cIHaBZWT/c14jzd9kxwK9Mm+XJ6fu/lGF7EX0KF3JYXBye1doixRPyisTWOhSzsLyfzF
 WG/GzlgsuVjpN6+UG1E1Pon3XxGz7XKXWNgj4OXNrenJxuqS2H/pQhC0lsW2iS/MHQAQGMx9J
 yEmrAZKSmzLP+AdtEaO7o+fovp5NmBK7JYQTWfu5omzvszr+h0FsmE8rKCUjX2f8FG53k5V1L
 9P13X//dwWz9FpHZ/4lrwk9YprlZKubHmmIccLI6LjwjPPrseV7WnVPdsp455lO1ujSUYGm0H
 oCnbHCkawJ09LM+vMmxmrcfV9Dysh4+rh+yG9gwQsRfdLiEPTVKWKSAt/oX20ZUON4FySVt0F
 ukwBHPG6cSxxTGBUl8zwiN930AROmPlyYHQVgNrTtdfyBhf32mPLUN5WphxDJEDV97oeOaRTq
 FvOSe+qUwvS0YDE+xS4vfFGGZ8cKKn5CzskMdTJpSahpubTWNc3Lx4unAd8+NFJqmaFzwyBNb
 U8wg406w0GO+9YEnIwrac8zkNW8rU9TNbaS7K8yZbJnYL4LP0ZB05l118lYedkAFARAuyP6qE
 Zi0/olA4BKRX+nMzQ7NRtnzxJLEjbHS//rP+9DENic/1PML7Q0k9QlQMLicHs/ejhrdDPaqTu
 EXa8NT3YxX4cYExBw7HUxujN5LAGD6KJKoPZKoPHS+rdOpIjal47+9awxukrpctyi2imMip87
 LmFT6L0fRg6B6zVtKdvVDd1hswF3/vs4bxECFtW48rFl7+G/16T2b4t7+X/YgivxabVge5osp
 Wg8jn/R4KdfI3Yp+z4HQPfOry7AUF60hkvY5CPn+13aCaNWcGO64nMmgnwJs+/LCRrz5wiyEy
 20DQ4VxW6WhmGd+c3DQR5Pk/Sq3oWKW455/XUs8caYudv8VcL97h+iYM43R/TiLfVtoiQTtdn
 S28rSCi/J4Rh4aAHsOd09sm+YPo+/8lhmusqNZX4Nyl7MTGq+OKR25LdUyf5voXDLqzkNRpmF
 aleqzLMX61Tz3VFlsSEY325Yl5DeABxZrjm/NPPUv1Ud0i7JVU0HmH9QrMO09iBJDJzEvTHNL
 txbRAzYYne9X7G2UxXZDy5bE72Pis5NJdDA3JbpkLFCqj2kqCDvqN8f98dvVgRt+tiuOhvsKs
 kfyXFWs/x3+udxS2H/L6RUu50nAhJNBtRuX2aOUb7U4zHcojlYUyc/P2wa90=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_131858_644837_BBD26CAC 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (moeller0[at]gmx.de)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (moeller0[at]gmx.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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



> On Oct 16, 2019, at 21:54, Jo-Philipp Wich <jo@mein.io> wrote:
> 
> Hi,
> 
>> Does it impact OpenWrt ? or just some OpenWrt based distributions ?
>> (might influence who need to fix this ;) )
> 
> it impacts the usage of the kmod compatibility repositories - apparently
> they're completely ignored by opkg.
> 
> This problem was reported in the forum by a user who was unable to
> install openvpn-openssl on a 19.07 snapshot, due to the dependency on
> kmod-tun.
> 
> I was able to confirm the problem locally here as well.
> While this might not strictly affect tagged builds, I still wouldn't
> like to ship 19.07 with a known broken version of opkg.

Silly question, does 18.6 have the same issue or is this a regression in relation to 18.6?

Best Regards
	Sebastian

> 
> ~ Jo
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
