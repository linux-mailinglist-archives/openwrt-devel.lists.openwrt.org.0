Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F7BB3F73
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Sep 2019 19:10:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qzDkpHC+lhVWWYpMO4MBz/DzP/yNA5gtPPFinwUaxkA=; b=jEte/bPfqUcsxj8qKG43Louer
	0qEElz8DUblnkH0HBJd0tpX+SG6ufbHFA6c/cSPOhJ5kvZPpFSHJJvs4zibtjidfcVYI9dWmUXanx
	Kug+sknzmNpLEqbHLLSfuCezj/T0cUVxzUCOI4Uap8piMOhiUY3ohBYwCm/6qCO6pFOMl7n9PU2yE
	jQXZBvoz4ut2chfCT7kuVEpwktV16nMKMgcjUsFT5jvmkb67ehnea+48XxHBoOlsOWBr1nNZ8M34S
	Q1XTwMgwUcyjYeor9kugX2sNdkVCmtwRQpKVoIAMUWxJ8zyyU0URzqxrG8oW9WEydvCb26Ln+Q71m
	FPoECQ1+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9uVn-0000Tw-Ok; Mon, 16 Sep 2019 17:10:03 +0000
References: <26a9b03930d8b13ab11d66f654976619@dev.tdt.de>
In-Reply-To: <26a9b03930d8b13ab11d66f654976619@dev.tdt.de>
Date: Mon, 16 Sep 2019 19:09:30 +0200
To: Martin Schiller <ms@dev.tdt.de>
MIME-Version: 1.0
Message-ID: <mailman.25144.1568653796.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Martin Blumenstingl via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org,
 john@phrozen.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] Lantiq xrx200: Access to ethernet phy registers
 (MDIO) from userspace
Content-Type: multipart/mixed; boundary="===============4981044092213232844=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4981044092213232844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============4981044092213232844==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
	by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9uVZ-0000Sw-5I
	for openwrt-devel@lists.openwrt.org; Mon, 16 Sep 2019 17:09:55 +0000
Received: by mail-ot1-x343.google.com with SMTP id 67so531192oto.3
        for <openwrt-devel@lists.openwrt.org>; Mon, 16 Sep 2019 10:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jQcJ4nyvLND+YSE1OGOvyEMrJtlm+s562XjROYN97xg=;
        b=eAe3E+76PArRA+04fhUJdvbi0XMtjNu1LDtiNzEvEf3Dd7O/m4vjjEMFR4sLPOYpdx
         lKN3ZnuaVLFIcvsG+y8h43E42DcbQPjmYxt2zAgQ/KF4GMVSBuW+At0aSgc42iGjNTwp
         V/AgXiQI9LvBRFdlSdIdFFTdFrnYLzVUzVKwyxeNbY1ZItVUjZbKVRnkiTqy/unnCPH9
         edDiL1FgmGyN5qn6VxjxGP64ht+f1Qw90JumPEUapKp8G6m8SS3JpbsmdhYMnzDrMlCk
         QMCd6E+ECVnlLn2z7Emxv33/ZioarvVK1CXPHDnuM0aysJhtAa7DXVqsfDZFhYKjJcZF
         N1Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jQcJ4nyvLND+YSE1OGOvyEMrJtlm+s562XjROYN97xg=;
        b=aRP46hIu9buyms27QMhM0Va2N4mOKBwXqEVc8Z5dT51d/M3MUMN6qUJqGgCGGxoa9e
         cLbiKbjLy0N101qHpjmA5wK7K0VYdqPiMt5x0/ujvwMarYGLmf4SZHi1z/LEw9yEOOFv
         CE5AKiNR2mKHUNKnRExUqor4Abv7g8Q4TQlKbUpvR/xq9MOsiOcRnd1Ys7QD1D/b0bwX
         pCPAQWlkgqAClyRrQJjpo7UyRf5yCSWcqdGiwbRP+HYx9tQcOITMM2vkK8d1FHFe+2wN
         PIXolKk6mu1hRM0+26sTpdKHG/7rmSJwRngvOyTt+Y0R1TBZ/UdnRsW/NaQV1CTdD03y
         OmNg==
X-Gm-Message-State: APjAAAXidPN0lQ+agICBT7imntfjWnqSBk+O6ol2KVXJYkMm+fmmUdTl
	Es3wLLgokCfZSL+DzOHUJQ8Ut6Zp/8GmkUl8OA53PtGs
X-Google-Smtp-Source: APXvYqxIyNSrWVNJKWV7ljmbSTh05V1bE5EdYAwmsR+YQeKM/8s68+81AqAhGGFMefl6kd+7IcpQSzXY2W4BXx8oSMQ=
X-Received: by 2002:a05:6830:1509:: with SMTP id k9mr188690otp.42.1568653782065;
 Mon, 16 Sep 2019 10:09:42 -0700 (PDT)
MIME-Version: 1.0
References: <26a9b03930d8b13ab11d66f654976619@dev.tdt.de>
In-Reply-To: <26a9b03930d8b13ab11d66f654976619@dev.tdt.de>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 16 Sep 2019 19:09:30 +0200
Message-ID: <CAFBinCCEveoA3nFyZEqg4XLoe_pzC9Fz=OTfugOyMQoKmqBetQ@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] Lantiq xrx200: Access to ethernet phy registers
 (MDIO) from userspace
To: Martin Schiller <ms@dev.tdt.de>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, john@phrozen.org, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_100949_227577_FC746836 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2607:f8b0:4864:20:0:0:0:343 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             (martin.blumenstingl[at]googlemail.com)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

Hi Martin,

On Mon, Sep 16, 2019 at 12:54 PM Martin Schiller <ms@dev.tdt.de> wrote:
>
> Hi!
>
> I am searching for a possibility to disable Auto Negotiation of an
> PEF7072 which is attached to MAC1 of the Lantiq xrx200 switch.
>
> The xrx200-net driver does not seem to have support for that.
I don't know about xrx200-net, but ...

> Accessing the STD_CRTL register on the mdio bus from uboot with the mdio
> command works like expected.
>
> Any suggestions how to do that from linux userspace?
... my (limited) understanding is that this is one of the benefits of DSA:
you get one interface per port - with that you can use for example
ethtool to disable auto negotiation for one port
kernel source reference: [0]


Martin


[0] https://elixir.bootlin.com/linux/latest/source/net/dsa/slave.c#L1133


--===============4981044092213232844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4981044092213232844==--
