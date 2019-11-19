Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A581028B3
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 16:55:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXRuWCtZ0QyIg2JYJ1Yoctm2vYIIEh5j6KFTv0nujOM=; b=oaRtBU74s8k4Aa
	/x+bAODh17ww1Zt0/7U4MgDyv2EALpIfXss7EbV1iNSkXFIvH2JFirm+ncqmSQnN65Bfs3GiF2cvI
	i/+Tqxdp/d8w7UuWA+QKYw+2ZFxj1ZY/UNmRqbN3T7SCLxw5nhHA5aBojPWBT8UfeBNMUDilaNBLz
	eEMPnhksVrvcRFCbH8fmJorUGCHlTqGjjbNLUHoDdl/Dgu0o0F/k6OnCLbAecG7BFf8Aa+UjroqvH
	3D+/iWxhbrcBmBIEgODBe8ixe8HXC6hhnE3ND/6I55Nao29hxEqqDH6M1dlg5ZEnbS6jHgyMl5p1F
	UcrSerrtOIHaB9B0dEBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX5qh-0002hl-JQ; Tue, 19 Nov 2019 15:55:27 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX5qb-0002dN-Nm
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 15:55:22 +0000
Received: by mail-wr1-x444.google.com with SMTP id e6so24508876wrw.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 19 Nov 2019 07:55:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/8pV9QLTbFf0WmElY+/i2/zMmKodH7KtEvmeSmbonII=;
 b=RryBgJ53t5QSffWz0q63hGoPqxrgOINFyFTgqj7kHE88na/YTCpg+ALWicy4cgALfZ
 K3vqoU4/rFXJkRk1H5tv8RLyajGGsLrML/VyCJ3Ea7GsWsyX2FRT4+CTA8aG43xVBbvk
 22LeOEwq9O7Fzqe13L3z0gfGbfNLiMSNbiu6/1tWYtW1osRuzYvs2lb8zpKWkaUnWpuW
 ZezLP6m8ARXKRKPziNiDgqYjUo1I46u3d0dT5KlPKxcUO9aItLZ1HjR4ntVWlMlJ9GG+
 j/p5MJIoQ+6lmy+9kqFrODZeCbkypV2oT5GzXOFUeZttdjvdS33FsxRZsq4POg3+kVoX
 3hSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/8pV9QLTbFf0WmElY+/i2/zMmKodH7KtEvmeSmbonII=;
 b=lGwv29d1ZVZgBk999Ac9vQqgCsIBGBzhtvegpkkzGs42zrHQk2hh9rRyuJ0qReyjhO
 AELM48uf7RfluG8VMLJj9mxF0sKlu7/1iXP8ASl0c9ZrL4wUjjiUz1qcpbbhSrQwl4/g
 E5+VOg1GuxgueGxuJhKax4LLU7vNwTETigfgHg2B1tgYAmeE/XpAZAjf3J+/I5VDoQDR
 O4D+vucu8jTrlZywThYALgtZRRz7f9Z3lR0KzIx58VKiuv+lGYs+C+UkIWNGOTILDO4T
 ZxjeIpRDc/iycuPE4dO38e48NAu7KjxCblo+kwK4BzfMD4pn0Wy9hEOi/q42dIDdO+bM
 VuIg==
X-Gm-Message-State: APjAAAXhOE1Lq8kPYLtO8RbWbf5IyOpuy1G9pWYJjZn9cRwQ2sYTjksf
 u6hJRfgL6lcLRPzdl4zbXLjKVfPYWqt+d/63Ci4=
X-Google-Smtp-Source: APXvYqzO4QltrBk/ZekUXyUawvf909bm4lLDNeeO6gXn7YPILKJQUN4GFzmGeTP4fE3W442dwS533JOjz/CJNK+5zlM=
X-Received: by 2002:a5d:640d:: with SMTP id z13mr11782792wru.68.1574178919779; 
 Tue, 19 Nov 2019 07:55:19 -0800 (PST)
MIME-Version: 1.0
References: <20191112140214.59f2971f@kosmio.komorska>
 <04615660-e813-7bc1-1e75-a51c289fd518@david-bauer.net>
 <20191112192234.721c6a6e@kosmio.komorska>
 <20191119161737.2fa01dc3@kosmio.komorska>
In-Reply-To: <20191119161737.2fa01dc3@kosmio.komorska>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Tue, 19 Nov 2019 16:54:59 +0100
Message-ID: <CAOiHx=kDgJjSbRCqrm9A6=GjR9HYkgZ4gYdvemV2-3cbXHemFA@mail.gmail.com>
To: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_075521_776239_1E3B2184 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: enable all space on Netgear
 ar9344-based WNDR routers
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, 19 Nov 2019 at 16:18, Michal Cieslakiewicz
<michal.cieslakiewicz@wp.pl> wrote:
>
> Hello David,
>
> Two questions were raised just after publishing 'all-flash-space' patch.
> Now I am ready to provide more information on these issues:
>
> 0. Downgrade to vendor firmware.
>
> It is possible. Just don't forget to erase both ubi concat partitions:
> 'mtd -r erase ubi' does the job fine.
>
> 1. Sysupgrade:
>
> > >
> > > Have you tried if this breaks sysupgrade from an older OpenWrt
> > > firmware? I'm not sure if an UBI resize works without additional
> > > steps.
> > >

How about

2. Initial installation:

Have you checked that flashing a factory.bin image through tftp still works?


Regards
Jonas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
