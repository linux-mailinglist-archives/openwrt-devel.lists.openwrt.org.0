Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5A768139
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 23:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ItCqJyxbcg8w0bQ9bx5MP5tGTs9gO2fZ/ltm8wT8vM=; b=Upxnyq5LT3vfyT
	wDljlIF4joXQFwQGRIJd1+1lcOnGxDcKU5JVv30+87uvUFpFDBDnvmGEOWqw5fDlJc7pD9LfbkyAo
	/JMLkP4WCg6vWQbehrEgJovtJ/1kHYHij3xE7ZMCMylORZX83zPp6eRe0hoLX9VGlY6E9CE4pBkQC
	teDPJuMicotTeblUrE7eHKHR2Fcqw+7nAzMrXmWJICAB989rU2siRnqkMxdkxEmhconimuq17ywee
	6TufpnW9KQtxN9DBQKuzJUMaDlHrZsihXjOKL5loQ9Jb3rsGsd+1g5VdTfh9tIXVHXs8X+kXpwV0A
	wqugquw3bhwOpOA7gQoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmlnC-0008Cw-Cy; Sun, 14 Jul 2019 21:12:22 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmln3-0008CW-IT
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 21:12:14 +0000
Received: by mail-lf1-x144.google.com with SMTP id v85so9604273lfa.6
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jul 2019 14:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0MnrDSWuVuGSFsLoM9yghxvoIJyPc4LGihQz3yii388=;
 b=KO1RGpcAYmO/sqDFe7WbtNQ64i5aMdMj2pOClFPIfrwlXAkyr6u1jgFL5gbpjrTFNU
 wyX8cElbab6UNgFpXCiO4Bicco0d9NPTFTWKkaDnTrsrJNoBxWyRByX9hc+k7+4W6e5T
 kl9g89hvTcGLPWbXrpujhSCtuV9zwYNaA45NPua+qCVGK/dIver/C6LS6WA0FxgriCwY
 joFeZ11ielkCsUiCCCzQ318X/cHE675zIJzkh9Sksij7qKqzuU5C9M/jg83VXoqnA1eo
 ww2tWi4J8+nOhu10qPY5shY4Ps044R8eF7Z0nKPA8T2i9np5l7lYEiimXRCAY3/hdAi0
 cfng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0MnrDSWuVuGSFsLoM9yghxvoIJyPc4LGihQz3yii388=;
 b=e+SpyeDh6kV0HSKBfzaaQ3vk/t+JUXlpITMfpvFyPTo+Hk7YKjXCEJ38ZRjcRFEdOR
 TyCkSstUynnOGpylIBeQyGovXLO44LUtA1dxJlL9UyYxkNSxpmR99YzGHTzCl/JW+2g4
 yh1ky5i4j1hfTkoWF6u0HagKzUcPP5vL3autCT5FFEtQ5Q+FjeKZmy5BMmdHwPeN1gcH
 0XhFvcwWRP0GGKFT8s9bqE8A40YBmPgqJRgZyrUC/1Tlm8my6h0oqha1dlpCdp3gWeMN
 96GJPndSf8dLukOiSoSgd5lCKnV2ThD1BQ+8bMRsE4chKURTAjpT+hb1Pwn5nbAWmlOO
 mSEA==
X-Gm-Message-State: APjAAAWLA9/681NAvE11tqwzmI7G/Rc0nL3ZPnVAm5I47Q7IqRrbxD/O
 Spd7VQopBkuwqEELnS+OtHdZbC3Dbfo6HNLUK+Goow==
X-Google-Smtp-Source: APXvYqwN37JJAwas+Xa5HrKPfJAgQoAQ4AoYrwYebpiLmefr4EDn/jadOCEb4HlVj6zv/yMoXOhOwDr9oeDDgzNsvCs=
X-Received: by 2002:a19:dc0d:: with SMTP id t13mr8932010lfg.152.1563138730406; 
 Sun, 14 Jul 2019 14:12:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190714135037.18471-1-linus.walleij@linaro.org>
 <79ce4232-ea93-e9ee-a59d-b9b828b73be8@gmail.com>
 <CACRpkdazsAQ9guJUtqYdxnB-HjCY0jStZM=e5vGkfFVZbbLgjg@mail.gmail.com>
In-Reply-To: <CACRpkdazsAQ9guJUtqYdxnB-HjCY0jStZM=e5vGkfFVZbbLgjg@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 14 Jul 2019 23:11:58 +0200
Message-ID: <CACRpkdZTtpP5bxnpGOQPvLUwVYT69bp_-_E9dZLCoV3wKsu6ow@mail.gmail.com>
To: Pawel Dembicki <paweldembicki@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_141213_619953_3FCA84CF 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] gemini: Bring up DSA switches
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, Jul 14, 2019 at 10:46 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> On Sun, Jul 14, 2019 at 5:15 PM Pawel Dembicki <paweldembicki@gmail.com> wrote:
>
> > > +storlink,gemini324)
> > > +     # These are all connected to eth1 thru VSC7385
> > > +     ucidef_set_interface "eth" ifname "eth1" protocol "none"
> > > +     ucidef_set_interfaces_lan_wan "eth1 lan1 lan2 lan3 lan4" "eth0"
> > > +     ;;
>
> Ooops I say I shall fix it then I don't. eth1 is still there.
>
> OK I fix a v3. The switch is working fine on the VSC7385 like
> this.

Or no it doesn't. I'm not smart today...
Keeping eth1 as "none" isn't working. I had to assign
a static address (the same) to eth1 as well, then it works.

In /etc/config/network it looks like this:

config interface 'eth'
        option ifname 'eth1'
        option proto 'static'
        option ipaddr '169.254.1.2'
        option netmask '255.255.255.0'

config interface 'lan'
        option type 'bridge'
        option ifname 'lan1 lan2 lan3 lan4'
        option proto 'static'
        option ipaddr '169.254.1.2'
        option netmask '255.255.255.0'
        option ip6assign '60'

I don't know if there is any better way to fix it?

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
