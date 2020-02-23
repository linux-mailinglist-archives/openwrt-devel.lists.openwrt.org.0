Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3BD169A43
	for <lists+openwrt-devel@lfdr.de>; Sun, 23 Feb 2020 22:29:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=csyli2rElpW6w7ggKJba/hPz4/nsvsomaW8YsOjoHg4=; b=mPl88uNoEo6kHSfQyidTPKRlE
	DSwAlqT35Nj0yZ3oQGGsRc6ceyEMM0XuhMY/KqlB9WyS3Jp0+jvdkXoDqCkw3q7XBxHitzUwpgfQP
	RNS7m2UssmPSbPPrGDow8AeBk3iB8z6wgLcZalcgaCKMl+z/7YQ5bZIH/ljfOODan+ncR2YptsG9s
	3l6asjEREur1Z6AOE2PRSI7cKLHfIvroJJ0/7Evh80np5Tcj2AoOhBS7f9uRoA2khfoywBmaISP6O
	vY5ZvSp4+aERRPCp6xhWmgrCZ864tYt5+Xou03mhkh1n1nl4BgKYF5MKQMTn62esTjNNfidNGxvzo
	/kCRh4vfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5yoF-0003aW-6H; Sun, 23 Feb 2020 21:29:07 +0000
References: <002e01d5ea82$ac0e8b20$042ba160$@adrianschmutzler.de>
In-Reply-To: <002e01d5ea82$ac0e8b20$042ba160$@adrianschmutzler.de>
Date: Sun, 23 Feb 2020 22:28:43 +0100
To: mail@adrianschmutzler.de
MIME-Version: 1.0
Message-ID: <mailman.32757.1582493339.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Martin Blumenstingl via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] gpio-export,output and GPIO_ACTIVE_*
Content-Type: multipart/mixed; boundary="===============0657866608745172729=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0657866608745172729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0657866608745172729==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5yo4-0003aA-E7
	for openwrt-devel@lists.openwrt.org; Sun, 23 Feb 2020 21:28:57 +0000
Received: by mail-ed1-x544.google.com with SMTP id p14so9539432edy.13
        for <openwrt-devel@lists.openwrt.org>; Sun, 23 Feb 2020 13:28:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pI527tJocYP/MsxutXBiNNUhMbP2oUiispaeukDAJBg=;
        b=b9S8yNitwEKWCCA/ulAc+0ML40XGFTgszcoYkvmwQjqAAvsnyxsRWmbNAS0MVK4Pzs
         xr4uOUWBCW3EfQ2ODD1EX54NHhDJ95iorQwkMN7a7B7xKmJuzFOL+Hi3TPDkIqQBljfZ
         wKxh5W8w1w3KeuVA9LfTzfcI9sCMQu4Ho+dEsLOAif6aWD+z7+2jOVyjmRaTzw7rBQsL
         rJ4AkYMBiS0xeAWpSqFiNxlsxYaj9VkZeBiYnKvCtYciblfn9b//ipvby/J3r9UiXYF0
         P7ek5NUZ/yEnD/FPvIiTgiEQx7ifGZuyDwNcY7kkzS5jo27aFnYBFYDHdWXHmXYUO84b
         PRJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pI527tJocYP/MsxutXBiNNUhMbP2oUiispaeukDAJBg=;
        b=pMFg09jUjQWq2JzHCPiVslX+ayL1vwiosES6fDky1c4WtcoOhWWfTd0IQREiXb2nUJ
         3s+RvS7eCxE0vDQX4qbhlt+f37ugnN9yN1H4IuvfUHHMS0eHdXP499HxyXPvaRsXgyZO
         OTo8INvpIDq2UWoj0oSUs6hmRirhiP9nmGHzxN/2tMM6hz6IoHeCQg45obmDoqOwczcY
         tTMR5SFSnaNnmiTQSZjDRBhqVaP2qlCE74Oe9G/RuWuGakUT7e9d35XgvYU2+f7qBtIi
         JCMw70S1e5yc/Iwishu1mVwcWpwC1Vfcj02O+/h3co4JvdGnY3PBy6k5ZGzSxuVmZFi5
         f0cw==
X-Gm-Message-State: APjAAAVjoh5xgV7+fYauPubWNkcHr1xsrX7W5hRuoKaMEbdi60Qq4Jtw
	bxM0VCREY8yz6LYkfyFD2UxdPF9htojAsA2R6Pc=
X-Google-Smtp-Source: APXvYqzt8bmL2vyU+wuBynBDaPoUSSdjBIk+3KKdN1SJFgARBr3aW2F9OpYI7rEdbmI/z/RE4+8+53nXhcUlME06enE=
X-Received: by 2002:a05:6402:1a4e:: with SMTP id bf14mr41693308edb.365.1582493333988;
 Sun, 23 Feb 2020 13:28:53 -0800 (PST)
MIME-Version: 1.0
References: <002e01d5ea82$ac0e8b20$042ba160$@adrianschmutzler.de>
In-Reply-To: <002e01d5ea82$ac0e8b20$042ba160$@adrianschmutzler.de>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 23 Feb 2020 22:28:43 +0100
Message-ID: <CAFBinCDCCoFrmKBCovCVBVPz3gdRza3jZ7JMh+rLpkjCeNfw4g@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] gpio-export,output and GPIO_ACTIVE_*
To: mail@adrianschmutzler.de
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_132856_500185_81EDEB1D 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2a00:1450:4864:20:0:0:0:544 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [martin.blumenstingl[at]googlemail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

Hi Adrian,

On Sun, Feb 23, 2020 at 8:52 PM <mail@adrianschmutzler.de> wrote:
>
> Hi,
>
> when defining gpio-export nodes, I'm never really sure about how the values for "gpio-export,output" and GPIO_ACTIVE_HIGH/LOW in gpios have to be set up correctly in relation to each other.
>
> I also was not able to retrieve a particular system in how this is set up currently (for different devices).
>
> It would be nice if somebody could elaborate this to me (I've found several shorter explanations in the PR comments throughout GitHub, but they unfortunately were never comprehensive.)
I don't know about gpio-export

> (And I assume the same logic will apply to gpio-hogs with output-low/high and gpios parameter?)
for gpio-hog there is documentation inside the kernel sources:
Documentation/devicetree/bindings/gpio/gpio.txt

I don't know why there are output-low, output-high, input properties
and if they are optional (meaning for example output-high can be
omitted when setting GPIO_ACTIVE_HIGH). when in doubt, ask on the
linux-gpio mailing-list


Regards
Martin


--===============0657866608745172729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0657866608745172729==--
