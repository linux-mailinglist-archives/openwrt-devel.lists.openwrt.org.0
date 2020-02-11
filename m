Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B676B158A50
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 08:26:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UuJ/SvuMmaWgOz98H7LvGqqxAvhYfD1/F9lCDod+AF4=; b=OjWX6Oc2mRwIoV
	8wckpLbHpuS41x16Gs30+cdioOok9Nf10eQseyLercGHbODdwYqfCO2hL1u3nbVgmwUryzwn6WqUV
	0edJX71f9wc8TS/jQpWUkm4yt0IzgHGuFA52XtgkLlEQ8ZgG040JOdzjFXwIeq+Gvsx4CjJ8N/STR
	Bna7wtHarne07EfevX2jVyOUGIPixK6OibbO1wu381hOliCMYnG5kdJFqYEjWfM3mqEmLgmLgzyFj
	qaQJN1y+uN/gARSlmUEBGBLIG3+dPS9I+UeWfgjhbE0JkkRyhSasCn3fDQDVhCNj2TZe2XAOXhqBr
	3Ply9v86zchl6GTTV2kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Pvf-00015A-AD; Tue, 11 Feb 2020 07:25:55 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1PvX-00014N-JU
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 07:25:49 +0000
Received: by mail-ot1-x335.google.com with SMTP id b18so9158457otp.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 10 Feb 2020 23:25:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9nCwExqnK6SDZbYV9thmrTRq4nSplo7BKb3Nprff318=;
 b=MfavTNmEgnWybrpbi+/EnhXqeypY3hsGs0eouzcxXT4fETiOWNsKD/8Hvvix4emama
 iBNQmrb/kj6IT6iQEHTiOFmEOWGoEoS8JFK5nb4kUdRvtvu6FtYFq0oh55aS1Rn+FT0k
 m0sih27dUMS5i+sgEEtajmV5xgXUhLoZf7L5w8f7DHpg1l1rBNsuBffrA7Z/B52BgaHH
 /ecXTnXX+bylKGCm8Uyag+QdsvOGaSnDhpn0Px92vI8zEn7hT/5njNs8Yueun93Acp3t
 WGAu5P7fl4erM5D+ta7hYyv7lNzUBXPpcggg5uda8banZOzrU3y/46mdExo9Q0pKhgI6
 TYqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9nCwExqnK6SDZbYV9thmrTRq4nSplo7BKb3Nprff318=;
 b=EL36T26UStbo87RIaOLmq51R4rcTvSERaykD+z8nmDFdsj0O7h8NT/DEgk2G8FOAke
 q/KYPFxYnQi4RDfAYtgpxAerXaWzN6bC6pM+alT8CIq0mbxKGqFVHkUQOGdkX8ZhDvPx
 2DxByY1xDf7LTBCO8mgxnCyeuOAQxVWGXcWEAGTn0lJlsGnogydql5863V/YRVdMfgF3
 F0dSHo8Qsj88dZgpN9d8rbufF6lu1W1qN8aVSLv2hlXDVoiOyVRWXUElkCKz8vY3gE5a
 OP0n3T9f8MGsDzlZnvGEln19E/4qt6IMJi5mimGBrgD6brOYtqbGAmLjc8ThY692vyqo
 dzqQ==
X-Gm-Message-State: APjAAAUWP6yVL8F1ttqraQH/ivJ9Sjgv5RIoxWtiHTT0lRB08CeYdrd3
 nnfcFNoglMeFIuBDVOxC3faEWF+j9PuFxlOvSiA2rllZifQ=
X-Google-Smtp-Source: APXvYqxlyBjfBd6AFZfNpegTHi5oMJSttkshpr1OTcbKW2z5IbwD3AVR6gDaXPNjdyIP84OjPGpIBUlQ42McOkq+xg0=
X-Received: by 2002:a05:6830:1643:: with SMTP id
 h3mr3978507otr.70.1581405946456; 
 Mon, 10 Feb 2020 23:25:46 -0800 (PST)
MIME-Version: 1.0
References: <000601d5e004$c42c3460$4c849d20$@adrianschmutzler.de>
In-Reply-To: <000601d5e004$c42c3460$4c849d20$@adrianschmutzler.de>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Tue, 11 Feb 2020 15:25:35 +0800
Message-ID: <CAJsYDVJw1jkg=kLOWQNMJqs_5wH5pnLEVRh3g0nywYoKPakQxQ@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_232547_669671_594DAA61 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] SPI 104 MHz on ar7240/Spansion S25FL032P
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

On Mon, Feb 10, 2020 at 7:25 PM Adrian Schmutzler
<mail@adrianschmutzler.de> wrote:
>
> Hi,
>
> while reviewing the PR for the TL-WA830REv1 [1], I was wondered about the
> unusually high
> spi-max-frequency = <104000000>;
>
> The author states it's running stable, the datasheet tells
>
> Normal READ (Serial): 40-MHz clock rate
> FAST_READ (Serial): 104-MHz clock rate (maximum)
> DUAL I/O FAST_READ: 80-MHz clock rate or 20 MB/s effective data rate
> QUAD I/O FAST_READ: 80 MHz clock rate or 40 MB/s effective data rate
>
> and according to the author, there are other boards with the same chip and this
> frequency, e.g.
> https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/dts/ar9331_tpl
> ink_tl-mr3020-v1.dts#L123
>
> So, can somebody lend me some expertise whether the value is okay?

In addition to the info provided by pepe2k, here's more story on driver side:

ath79-spi doesn't set spi clock divider properly and all spi operations are
performed using bit-bang mode. So the 104MHz SPI clock isn't actually
achievable. (My 24MHz logic analyzer is able to properly capture this
bit-bang spi signal.)

This high spi clock needs to be tested with my commit:
ebf0d8dade ("ath79: add new ar934x spi driver")
and I think all existing ar93xx/qca95xx devices with spi-max-frequency
higher than 50MHz needs to be reduced below 50MHz or it needs to add
m25p,fast-read option.

I'll prepare a commit to reduce spi clock later.

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
