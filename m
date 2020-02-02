Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A565D14FCAE
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Feb 2020 11:48:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2WcqB4G73oCcNnVdSr9HJJNkUhNNf3GtrqQr4y27v44=; b=s3sswZYDYWjrE4pubkT3FGNKd
	XwrBzOPI51KZSv2X/W8GVJ6uYqDxIRC3lWn+qu0EGF5hHmxEebMOxTCTMZgukfwgiA9hASGypwN9k
	7B7qPD3X+J+/6p5lfJ/tf3fN5VVWyliZRPILOI+apZnrHrDCxysi0R6bj/4Kc/nwjD6SeGEHNRSk/
	r34gDiICPLxiT5wSWNRfwosVW3oQIhQrT2lmnPOHaCsDPhG7RT0HgVz1uuEtI1epZ4eD6Vp4eVK/N
	VQKtEGiGDbQvwfnYmtTJGD4X0YVya/2Y5T5G53knQ9KFoH6JDCwx6AMIQ26N0omAe4M97gzfcmPy3
	UMzOhEk7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyCnE-0000nS-Bj; Sun, 02 Feb 2020 10:47:56 +0000
References: <00cd01d5d928$14be1b20$3e3a5160$@adrianschmutzler.de>
 <CAFBinCBRhs50AiBnaZQ5eoYZ4ZvCxaDnYENfpLPRQPErO6PCtA@mail.gmail.com>
 <51dfd1a8-7573-2afc-e834-c1ed60c64514@rogerpueyo.com>
In-Reply-To: <51dfd1a8-7573-2afc-e834-c1ed60c64514@rogerpueyo.com>
Date: Sun, 2 Feb 2020 11:47:37 +0100
To: Roger Pueyo Centelles <rogerpueyo@rogerpueyo.com>
MIME-Version: 1.0
Message-ID: <mailman.28111.1580640472.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Martin Blumenstingl via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org, mail@adrianschmutzler.de
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] ath79 equivalent of disable_smarteee
Content-Type: multipart/mixed; boundary="===============5662068379480795622=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5662068379480795622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============5662068379480795622==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyCn8-0000n9-KW
	for openwrt-devel@lists.openwrt.org; Sun, 02 Feb 2020 10:47:51 +0000
Received: by mail-ed1-x529.google.com with SMTP id m8so12848913edi.13
        for <openwrt-devel@lists.openwrt.org>; Sun, 02 Feb 2020 02:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GMH5Oc4LbT32b3y8WkZbu4YIYeKXKDa4ro68u0zisWE=;
        b=hmE/9LVNn1UY+Ag86NuUVG+pWyOlyaddviYikPY2PWN9+RrRPEY+bg50sfYE7KHezo
         +p4+mOqD2Asb/ddkugTM2A60CeZSjqIG8g+W7AxoNqymra93NKbfUhwoAPyV9y08AUP1
         YKsb5YsqArGOXYVBqT7BTyZmQtyLw+06BMC7MrA2KgPEtn/v8DfrCfGmmTlResQxPpER
         Ss3gem6PNwczXcDeT2pQxD9lRccZ+/D/MXt05t4jDL5QBFqH/e2jcAj8JxKFBXh7EUfz
         JR3vI2O5JsxQoxs/VgIb/KMvdOkq1G/7d0YDRnSj6FOIbjTZHB+2OB8npDD/C6N5rgM2
         8H2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GMH5Oc4LbT32b3y8WkZbu4YIYeKXKDa4ro68u0zisWE=;
        b=rUsC4DbHHu98Tk8dL8DUFExL6+UYec7rtqZ7x6O/eH+FRbEAaWafIwy4fL5x7k1Naf
         ilAFhlQD9l2iWZ83shiAphnglXtG6zHVXoqxcvJylr9LmDs4kNL04WjvKY1YM6bZ6RMJ
         lBLYJ35lavmNqewvwDOirfQcmZvz4aSE7e3OUkEAOTa5bk6HkHmtxI20mHNFxF9VZz9a
         tojDR5stwu8zzr4XUKJ3I98EnO227TR0p8SH/ktEH1jTPnyHhykGAXEbMgs0meY5jY4F
         6zyPgE2pz6JHxNp3um1C0fMYAxR/kvPKFNRTT9fMBGrPF5hzNQAufN+I+/yyoCoUUShV
         lokA==
X-Gm-Message-State: APjAAAWeJoIl/KFl3T5GYzJW1yKQUi6MEu5eyr4+1ho5ZllBndeqaEDZ
	cRUrM3ZojYhU/fgSAYXKxV4mYbeOf27y7mMePpA=
X-Google-Smtp-Source: APXvYqx7GiabJ5NQ6wp+XBOe2Wkgb0hMdS3puPIM4XDgQVPuuQd72i1oIjZi5YlXxIpJrrWqheHBdr/GycLrJdPnkUM=
X-Received: by 2002:a05:6402:b2e:: with SMTP id bo14mr7998780edb.13.1580640468403;
 Sun, 02 Feb 2020 02:47:48 -0800 (PST)
MIME-Version: 1.0
References: <00cd01d5d928$14be1b20$3e3a5160$@adrianschmutzler.de>
 <CAFBinCBRhs50AiBnaZQ5eoYZ4ZvCxaDnYENfpLPRQPErO6PCtA@mail.gmail.com> <51dfd1a8-7573-2afc-e834-c1ed60c64514@rogerpueyo.com>
In-Reply-To: <51dfd1a8-7573-2afc-e834-c1ed60c64514@rogerpueyo.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 2 Feb 2020 11:47:37 +0100
Message-ID: <CAFBinCDEpoDW6t5OF+T_3a9hXV16+DkOhx=8CnydxwEOj43o2w@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] ath79 equivalent of disable_smarteee
To: Roger Pueyo Centelles <rogerpueyo@rogerpueyo.com>
Cc: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_024750_698000_67298073 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2a00:1450:4864:20:0:0:0:529 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [martin.blumenstingl[at]googlemail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

Hi Roger,

On Sun, Feb 2, 2020 at 12:00 AM Roger Pueyo Centelles
<rogerpueyo@rogerpueyo.com> wrote:
>
> Hi Martin, Adrian,
>
> Thanks for the info. The device is advertising EEE capabilities, and so
> is the adapter on my computer it is connected to:
>
> root@computer:~# ethtool --show-eee eth2
> EEE Settings for eth2:
>     EEE status: enabled - active
>     Tx LPI: disabled
>     Supported EEE link modes:  100baseT/Full
>                                1000baseT/Full
>     Advertised EEE link modes:  10baseT/Full
>                                 100baseT/Half
>     Link partner advertised EEE link modes:  100baseT/Full
>                                              1000baseT/Full
>
> The eee-broken-100tx/eee-broken-1000t options are not yet set in the
> DTS, but I am not seeing any EEE-related messages on the router (nor on
> my computer) --or I'm not looking at the right place--. Is it just a
> matter of time (i.e., they will eventually appear)? In other words,
> should I add them to the DTS?
These properties were added upstream as part of debugging Ethernet
issues on boards using an Amlogic SoC. Slow transfer speeds were
observed by *some* people and eee-broken-100tx/eee-broken-1000t fixed
it for them.
personally I never observed any difference on all hardware (all boards
with Amlogic SoC together with all switches that I have) with or
without the eee-broken-100tx/eee-broken-1000t properties.

We have not figured out the actual root cause of these issues on Amlogic SoCs.
So we add the properties there whenever the authors of the .dts
believes that it fixes some problem for them (or someone else reports
a problem and adding those properties fixes it).
Unfortunately this also means that there's no specific test procedure
documented.


Martin


--===============5662068379480795622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5662068379480795622==--
