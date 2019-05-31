Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD0D3124C
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 May 2019 18:26:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=umNkFWdvMpPXL3yBaSVuNL8iRSOVsfHWeOOd8ZdZAl0=; b=qWD5RdCtyy8gZh
	RfHUX6kOQ2ht20ko7k05RSYd23XlLMYhx++MakxPoGyDPPWU/3QKosGNIWUQJ1YiVBRO5Akrgv9I4
	H6u1MIUj1ckVMAGuLay7TvbJxntVLj07+4rWoPqiJ/81hd9scBlazb+UlGlZrDgpxihmiKeI+RvCt
	Cqb4K3fT3kgLdYhHOY/zDkLTt/KvD5CX9Ap1BEOPnwBiJThn8r839kcmEkOUpIwLXBQQR3gyYptTO
	a+NptWdPA/gr1ei3AO9IkS5mK9w4vmeej+BntHtmS93KBTigvTG4jaZz3vzAEQAERHNciRVKXrpWm
	KD+jFsp6Si5nWs7Gy5DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkMR-0001i2-J9; Fri, 31 May 2019 16:26:31 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWkML-0001hi-0K
 for openwrt-devel@lists.openwrt.org; Fri, 31 May 2019 16:26:26 +0000
Received: by mail-wm1-x342.google.com with SMTP id d17so6422663wmb.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 31 May 2019 09:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dz1wbnL12Ejhb6XWz45k3D4XloK9u3IMYmAhPJN7R8A=;
 b=ZDRCv/+LuCP4Si5bK8dFdzHhUzyncO4R2+S4+2ly5Hn1NSLA2Yba30cmYq/DBZxMAJ
 vDkpdNHXq7UT9xHWM3SajGsPdgH+xUuHcmobz2oIyjDU1IAMa1dtbJs7zGmPGm4skSHF
 Y4+QPN7rJcRYfnldojnStEakE5LAGdRT2nCy55r4oWZygMIBrjZczi1nypWrbTFbXL3l
 pKclN63TBEkXx/n93Y6pbyZypwVUQ2QN0LQEocm+2Lp5T2ZG+Uh3s16bxHFz1h2RzBxs
 Xq8Ub5VaLqCofvRmLsFGCFDGT6PD9u4c/i3t7v9kGYGQxxL/28WsAfLkQrDlulNN6Suk
 SW6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dz1wbnL12Ejhb6XWz45k3D4XloK9u3IMYmAhPJN7R8A=;
 b=bMZn+xx+7RqYMCQyhGzdDDLz1CLeirxxEHGat9ad0UXyiKoLXANOU7HlvPllb9q2Bx
 EFyk+koGvLIOpz3p5EO6DeXnIku08OrTmMXmLu3PGLOxol80yh2p+L9Y5kVeYQSxwRQX
 d0y4KoNKXdcbWP1tRhUBKJiQvAC0ZJutY31etlz2S9vtm4xtbakWOmKM4M7jk26YDFL6
 V3RU0JyiyGHMBLL8bM8ErAlFwweIUNsiMg6VglV9XmxkTCfhy0dwTkANB1J+eT6dOuvS
 dB0xchGKYjFw6xQH9ihzxsGi7M001jVGUDqBh9E25a7Gn4D+OCA1XzUqlnXTFyL9hvIJ
 6cQA==
X-Gm-Message-State: APjAAAVNMYgSVJIaAYFz1KIA4ADZWaySbkAXrxXkU+ppvn6/Nj2vEFQj
 Ru+t/Dn+EN8NnxKIbRMppms=
X-Google-Smtp-Source: APXvYqwmatAb9kP914GPEWpTzk+rpD2iA7PAF/b/6EUYXHutJ7uDcatnSJ+q0MPboBu05QAREVKwfQ==
X-Received: by 2002:a1c:ed16:: with SMTP id l22mr6404463wmh.96.1559319981996; 
 Fri, 31 May 2019 09:26:21 -0700 (PDT)
Received: from debian64.daheim (pD9E29608.dip0.t-ipconnect.de. [217.226.150.8])
 by smtp.gmail.com with ESMTPSA id q21sm4200091wmq.13.2019.05.31.09.26.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 31 May 2019 09:26:17 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hWkMC-0003yB-Ke; Fri, 31 May 2019 18:26:16 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Chuanhong Guo <gch981213@gmail.com>
Date: Fri, 31 May 2019 18:26:16 +0200
Message-ID: <2607811.gNoC5flUSi@debian64>
In-Reply-To: <CAJsYDV+yTFZafgzz0H42sfnzKYoB32ycxRBEht_XHXs4CzEcJg@mail.gmail.com>
References: <20190411155945.28600-1-mail@david-bauer.net>
 <2850061.LOaScECSic@debian64>
 <CAJsYDV+yTFZafgzz0H42sfnzKYoB32ycxRBEht_XHXs4CzEcJg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_092625_073471_FC08FD0C 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] ath79: add QCA955x SGMII link loss
 workaround
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Friday, May 31, 2019 4:44:50 PM CEST Chuanhong Guo wrote:
> Hi!
> 
> On Fri, May 31, 2019 at 9:34 PM Christian Lamparter <chunkeey@gmail.com> wrote:
> >
> > Not to be a party pooper. The ag71xx is well on its way to upstream.
> > https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git/commit/drivers/net/ethernet/atheros/ag71xx.c?id=d51b6ce441d356369387d20bc1de5f2edb0ab71e
> >
> > So sadly this all would need to be somehow upstreamed first and then
> > backported again. *sight* :(
> >
> The upstream driver is pretty much broken on every SoCs with external
> PHY/switch. Getting every ath79 SoC working with that driver is
> already a headache.
>
> I think we should just keep maintaining our ag71xx driver until
> someone having a pile of ath79 routers get that driver working.

Well, look what happend to ar71xx then. The development on it is being
defered in favor of the upstream ath79 dts. So what do you think will
happen to the special out-of-tree ag71xx drivers now?

Cheers,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
