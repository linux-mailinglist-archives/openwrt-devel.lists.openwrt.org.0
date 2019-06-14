Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB0646890
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Jun 2019 22:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z6VAUPmk2Da/1YuWtnHEfhFCUegOEtxbPk33S5Eoof0=; b=T3XnKT4Tgayppa
	2dsua/1BHUW+FVUqlH2ET55fRvch3N5Nca07u56W8o7+ClTgRbEM9VoFC1OnAGtc4aMbC8tk7/l1V
	6SsyzL81iJI2y1P6NgzPrf+T9hiPqS2KtwekIRRvzVCF23NVBDdQpf2bvfRKrOBtaxscUwJMbXr2+
	HRAqQn9eosq7yfscLM/bu3J4+sBkuJo+ouhnK9AWKkANzFJCZ6X9JsuM+EPCG1ftiOvTLRlcRvyZu
	onO4ldg8IbZRHaHUZJKbT2pk5DgjDTuNAmzLNvCNYKI+sHRnds6sx4dJDkcL6zaAkTR2/ovmO03Si
	5+Y8+Mdei/+h+RnTnEfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsPm-0004br-52; Fri, 14 Jun 2019 20:03:10 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsPd-0004av-Rk
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 20:03:03 +0000
Received: by mail-lf1-x142.google.com with SMTP id 136so2520772lfa.8
 for <openwrt-devel@lists.openwrt.org>; Fri, 14 Jun 2019 13:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tzLk2xyDR3zK+zIvywl7qnyrKXlkPHxjDbVfeoL0A70=;
 b=QmiWZw/iEeKMezINC1dev0qszASdag5i02izhzz+suymm8bKCDQKmGS9FJHGh2bj7X
 vcL6qesZRFkPrNM1X6tEsXXGT2RVAXwBT6VKdn1pd2wZ2lpoZU6EpJvHSBUkr9Sb9HJx
 drP0QiaznIdt+2oahjWXKQnN3piNLzH4+FRAX+SDcmCsFTV9TDWHYLaLCXuObb/eRykw
 e7W/Pr6KbQdfRaWNNP673T4ng3IFmjnzRnUMZaCaoDSNzbJYP+vOtTGR9xdUdYbxKvTB
 fPPUq8yELEVMOZyW7Q9Ou12yCm6Shbe9vVRNGgilxQJIqQKjhYmuRa992S4czBBpC+lA
 sIJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tzLk2xyDR3zK+zIvywl7qnyrKXlkPHxjDbVfeoL0A70=;
 b=HDlCjqqACRRbi/MaDCLIZEf5VZQcg2ZSiwoWow7Jf9x5EIOM8QDP5IIIq2Ox7bkI5S
 rYo10p5yklxqZaMyK1XYYnTqpCtEeBxr072Ef2zQvJ00hVYHJKpPprrUSi/yBkn6qPuX
 Mka8LyDv8MLuZPA63xoQtvI+VYFTJIR+12edBQsP2iUsrspSbkJY6FkTVNipOwp6NMs1
 KidKyrkvVvtceyQcE04SBhoj75HjgZKzYQ9RYEp0jR39UC6OYyjDp7dpiCbpdTtFqV0u
 SDQ/0T+1/HQ7/r6aysXffo8szYNjaOAdF2p6VmjCbTRlr+AQlIPyaYLqAsfox4qa713Y
 aXLw==
X-Gm-Message-State: APjAAAVPRlnBSReqifwCzmZlRgv/hYg8WpGiwQ7rYyW/N1iUVRpLSdLL
 Qc1lYQ3O3tm1I/kDLAwz9SohkawtGoj7g+s+skXhsw==
X-Google-Smtp-Source: APXvYqwPgH6sdyS/HSjKbs8yNBfnaSz7kbK6r7I6dqb8pNNiszClaTAXf0BEaYLbxJB8fIsqOLK/LqCvahpZLx2JF2A=
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr35933347lfm.61.1560542578813; 
 Fri, 14 Jun 2019 13:02:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190524212719.30694-1-linus.walleij@linaro.org>
 <2143459.csVk10Y2R9@debian64>
 <CACRpkdag__7EeFKq=FJOFfJ+HQFi2qvW1UijEVkCyBiGj_-AAQ@mail.gmail.com>
 <2404813.1C8haVOXpY@debian64>
In-Reply-To: <2404813.1C8haVOXpY@debian64>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Jun 2019 22:02:47 +0200
Message-ID: <CACRpkdYPcXuBN+FrzLWK5HaCX1NvxjULWyY6uWzOHQZ-z02h0w@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_130301_911927_70A88D95 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] gemini: Make a per-board case for
 ethernet MAC
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, Jun 14, 2019 at 7:24 PM Christian Lamparter <chunkeey@gmail.com> wrote:

> I put together a patchset in my staging tree starting from
>
> https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=620462e09afc40602110b82caeb2858903709567
> https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=bbde89504fb6124da5a3f0014025753db4d6ec67
> https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=6096e5208373822d123b8fe4f848b8612f3d04c8
> https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=1d8ddcfc7a00701ab73d7dd06cf5fa420c1a5882
> https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=b106a522001e970378c38279fe598acbc867d0f4
>
> Let me know if this works now with the ip tool.

Yes! I applied this series and all comes up nicely, right MAC address
and writeable root filesystem. Feel free to push this and thanks so
much for the help!

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
