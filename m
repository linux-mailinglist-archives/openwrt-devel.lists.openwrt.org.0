Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8646E79242
	for <lists+openwrt-devel@lfdr.de>; Mon, 29 Jul 2019 19:41:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=20H/wz3cTxu6G9BQz4DwwFxgWSCc06XqlInbr/M3Ncs=; b=jlzpjsLR/7PB2uHg+40W0OEP0
	6CojNhE+Pc4YS09uEXMlYs7fYGsPPOKy7t+AVZ/DuykcgdDz9FAKxrPV+1lXmEe50r7HHn6GgGrck
	pJZstJkoH0BMgjIUGOnWHMJtQAUX7pBdsO2DMnhBf5c0FZtI5/WBTXbkiKCtMOPJa0ntBsQEbZePo
	xQO91ZWqIu4mv8BsggsF1feH9GeXd8eUWHJV5036lLMAv5QrQL6A2RFFhxQ8mwX2eGk9hLw6VPHbE
	BT5tqSRPyHdrtKM0/IEEQmwNc88BQflu16KuAkpxi8Q8c19JzGheptIfyQurxc7WQ2lFR5ZsIuuJD
	WzviFEVkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs9eI-0005we-HA; Mon, 29 Jul 2019 17:41:26 +0000
References: <alpine.LNX.2.21.99999.352.1907291535010.27116@localhost.localdomain>
In-Reply-To: <alpine.LNX.2.21.99999.352.1907291535010.27116@localhost.localdomain>
Date: Mon, 29 Jul 2019 19:41:04 +0200
To: Enrico Mioso <mrkiko.rs@gmail.com>
MIME-Version: 1.0
Message-ID: <mailman.12538.1564422079.19300.openwrt-devel@lists.openwrt.org>
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
Subject: Re: [OpenWrt-Devel] Problem reading flash zones in ath79
Content-Type: multipart/mixed; boundary="===============2284380056351884504=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2284380056351884504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============2284380056351884504==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1hs9e9-0005wH-Kl
	for openwrt-devel@lists.openwrt.org; Mon, 29 Jul 2019 17:41:19 +0000
Received: by mail-ot1-x342.google.com with SMTP id j11so6107866otp.10
        for <openwrt-devel@lists.openwrt.org>; Mon, 29 Jul 2019 10:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=v6swbPbsPcT93ycGunUw8Lj99YBjNLOADD2Q8bSPqHs=;
        b=Ek8ObAkflPrA7eTOZX3VOR41E0bvtn2VgDk1+nYlPYYv1DzkRq4I+PSLj3Q7slID3w
         nVYtsfmyGznLd+y8AGPxsYjFXKFdLB9B8xJCmaprCuls3ersS8Fu+QKYAOmPMMTuvDhP
         WFez2ZTr82pjJG7nMpJ2MVLipCxVTxoCUMcVgKtLKkmWrxCuTM8MeCS9b4d5M3j8IunU
         BZJmiLifzF2ewx4CJo+F7x48jMyo/LRrsfRTZ6SqeRLueyNZzBlJIQmD1rCT8wc/pGh0
         9kgOgWdPTGqnB1LZPrOWqsJ1hsj+SAiDVUeGCNIHrN3wJ7uNPumw8+/HFF6c/V5Eqj7k
         /8kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=v6swbPbsPcT93ycGunUw8Lj99YBjNLOADD2Q8bSPqHs=;
        b=Kbcoq3yNIwSqxH8NSlhGS1pV15t19Y4PGxrXWZTuL/WesSQ2ujXNQ5zkx0Qy4QRsWX
         XV/Lk3O6leTSokGFxm8fyKaPXOJPsmUtdSXIkYt6sgKegCKHcXuWJKMSgvCN907KbbYD
         JNRnPE82kDe6PXX/bH+0Jpo9VHbe93rruNY53StIwrVZMNvBJOpmgZHC7rheIErZ1uTp
         k9cmc4XXI64jEnCBsSQFMib0ww6RezIx68gtTQFI2G4VPJYnHG+LpVN5SrSjWu7AcJOp
         naufiUEuwoCAk08QY/BG2spYHOLaxst9s6k7BRdR3VogsnDXmtGt9mUGMY+U2ateUs4D
         5u4g==
X-Gm-Message-State: APjAAAW5rbtyxAn2EkSd48VgL49bW5L1M58VaRJhmtXyppMFNJ+ijy8K
	9DsGJ34MvGvWOtDuDKjpm/SaPmJfvpvGFWf/qS4=
X-Google-Smtp-Source: APXvYqxWTbhHLoAMjxpuMD+73mQf2Tq8E7tjfhB+8uRulzCdaXq+nI2xCotk7rbpbhtqXCCfLgoWUkoS/I3tXCYlHG4=
X-Received: by 2002:a9d:6d8d:: with SMTP id x13mr13305372otp.6.1564422075788;
 Mon, 29 Jul 2019 10:41:15 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LNX.2.21.99999.352.1907291535010.27116@localhost.localdomain>
In-Reply-To: <alpine.LNX.2.21.99999.352.1907291535010.27116@localhost.localdomain>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 29 Jul 2019 19:41:04 +0200
Message-ID: <CAFBinCCKwCaC9h5eB8bXeFxV85RCtqC_weozF-wFVrMymBgTFQ@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] Problem reading flash zones in ath79
To: Enrico Mioso <mrkiko.rs@gmail.com>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_104117_708546_098DF10B 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2607:f8b0:4864:20:0:0:0:342 listed in]
                             [list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             (martin.blumenstingl[at]googlemail.com)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

Hi Enrico,

On Mon, Jul 29, 2019 at 3:40 PM Enrico Mioso <mrkiko.rs@gmail.com> wrote:
>
> Hello guys!
>
> I experienced an issue where I wasn't able to read all of a flash region on an ATH79 device, the Archer C60 V2.
> Taking a look, it seems the MTD layer will return only 512-bytes when reading an mtd device via the mtdblock layer.
I believe that this is related to the erase/write size of the flash on
your device (see /sys/class/mtd/*/{erase,write}size).

> So, in the case of my Archer C60 V2:
> - the first partition, "factory-boot" won't be completely readable (256 bytes will be missing)
> - sameholds for "mac" partition
> - same holds for the "u-boot" partition
>
> This will prevent users from making proper backups of their devices.
> Should this be fixed on the mtd layer or on thedevicetrees we're using?
> Of course I don't think this is ath79 specific...
I suggest to also ask on the linux-mtd mailing list if you don't get
an answer here or before you spend time coding: [0]


Martin


[0] http://lists.infradead.org/mailman/listinfo/linux-mtd


--===============2284380056351884504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2284380056351884504==--
