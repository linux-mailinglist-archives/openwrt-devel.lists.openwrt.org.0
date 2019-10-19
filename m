Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE07FDD666
	for <lists+openwrt-devel@lfdr.de>; Sat, 19 Oct 2019 06:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rWjRu7YbAmWX8g3fN+ug4h3lSQbNmZkhVEHyZV6eImM=; b=fZe+fkqMYIPZoo
	3+RQ8SVHcQWgDvPyyMWFdfZryD8v5ntBVE1GblSzIV7tK+qJe84oCdw/it7KCNXTd4cO4swqYQVEj
	yiE57PgqPuOFazxxAYEZzoLsGeOZRBEgJLbrNPx31hOQEgOPhEohd3QSzxXx8xTPvYTn/XRF4VF4B
	aeRemeFKx/NZb0TkAM6nVSOjCBjxlOohQvKV2Gmd83OXzb4aPIb7z3hQsOZSMfK8tmslSX6a+IP1M
	uHn5j/jkqL9lRKrgveNjeJptHi2f9w0zSHCoR2bMvItBPewG9DTpDB1izLW0hbmcQXBLhjziDWX7W
	33YyEhIqe4Cbp2xdhd3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLg5Q-0007hu-Kn; Sat, 19 Oct 2019 04:11:28 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLg5K-0007hZ-GZ
 for openwrt-devel@lists.openwrt.org; Sat, 19 Oct 2019 04:11:23 +0000
Received: by mail-lj1-x22d.google.com with SMTP id q64so8094142ljb.12
 for <openwrt-devel@lists.openwrt.org>; Fri, 18 Oct 2019 21:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kovb1SWkSP86d5ZyHGuU6FNvhjtfhHtKqdLvZuocXos=;
 b=sRoNgSmFFrD4s33Cb29WCj15e5Msvfds3yB0IZrnRE89W5+ZRPXOI23Zx/9fEtIRho
 NVhJuRcLMGSmDseRmSgqTyeh/X+v8kbiIWb2MYWaX9GAZEjNd9woGa70I22+XPFNTlPe
 iZoxoYMSfFBut4HPKi2Oo2taIfBbfxvm6Z7v70w+06zSPZaUyvP+NYLkjOVPKSxBPcC0
 pi8zYMtS3tO/bVK7H4t6LZz72uwH1pB6iw0JCArjFk3y+p/be+QUYiWJCpDa0Ogaelyf
 QtAyHvYQnQAsrj/6fYR/0haNPyT2wu1mjeRotJwCapCO3kBgJhTrMh7sS8VpuFaZqXGj
 dTAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kovb1SWkSP86d5ZyHGuU6FNvhjtfhHtKqdLvZuocXos=;
 b=N2o7XXFVqADeHHcJTukjIR+Enk/m8zM586uLDmIDzv/y18KNI6Mv9ROWK1OTXtkLop
 v1OKLU25+MH6oAGIF57vsB81P+uiqN6/k1hbB72yrDWShTfEH/W7DN1vBllKsAmYa9iz
 O2YlqS71N7jf8bPXmLhOnuXySwR4wDAuNJRHKEwSZ1PyV5dcQh7ONYXmS1rwz2ZFAlCl
 TAPTgBIyMLTD5UOpGfUhvTg9vHOh+1jqKC8flEInOfsY/52opIxEu8NiYZGf70CKEk3K
 1diDDK/l38vOK/2dM5petAzuNLPiqGKHn+rT+rl9a2pExuv7bZ2jQUK0goZ88M+UbFhm
 Qmxg==
X-Gm-Message-State: APjAAAWQ3+zXb+JxlhOVSRg6IW22KxC+aW03t2DDjJtR1erpmyZYj72V
 Qzr2lKxRvO7GC0tLjKOF61k0NotS2o7ouP59WLVyYSJeOMk=
X-Google-Smtp-Source: APXvYqwtlvdMVvZw1+y5PsxOYlO1/hXvODReKXm/ldAG7JI1w2WPtw8/ldnCund3pVig4tB9LHx+AnM4vuJ0JR4/V4A=
X-Received: by 2002:a2e:9d12:: with SMTP id t18mr8099603lji.196.1571458280373; 
 Fri, 18 Oct 2019 21:11:20 -0700 (PDT)
MIME-Version: 1.0
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <87v9svtvrl.fsf@miraculix.mork.no>
 <fc77391e-68d8-1e3b-b86c-b01750cd183f@mein.io>
 <bff0c30a-023f-c1b0-ede9-efe46152ddc5@wwsnet.net>
 <f5a36ecd-123a-dcfc-a923-42e3d10e0645@wwsnet.net>
In-Reply-To: <f5a36ecd-123a-dcfc-a923-42e3d10e0645@wwsnet.net>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Sat, 19 Oct 2019 12:11:08 +0800
Message-ID: <CAECwjAivYh3Rs_N6hzfzyXyZ7w_MT0oOnSLN6ZHJ2D+Zw5aSkw@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_211122_576226_4E4A670F 
X-CRM114-Status: UNSURE (   5.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, 17 Oct 2019 at 16:19, Jo-Philipp Wich <jo@mein.io> wrote:
>

...

>
> * rpcd leaks memory

I will give this a try and see how many leaks I can uncover in the weekend.

Regards,
                yousong

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
