Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16464E2FFC
	for <lists+openwrt-devel@lfdr.de>; Thu, 24 Oct 2019 13:08:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7p9dKMOfyCS+o72u8D306D/C5Ky1LktVJaU+dUQ9tlE=; b=RbKa3kuGN2OjzdIirxNxx6f1T
	cbps72gU0wDBMaybKlKs6Uo/j+5fe+YijRg5oQ9OSMENAc4jJaQ1myn7YumnspBXhJoaht4qjpMB3
	8ViZGnNJ8NyEO77/Xzv6A0xNsobZkJkAtI0DWiCy+sNwNtnjlJ7iMbEzWQDR3iULLOmKYBhYBftOh
	KfX5kbfqc6LlYx9W7xJJzIFIgETg0e8nQV0IAxG8AykB+BT96/yPcxSUQzxjVsgfRWmIimKU8I7F5
	ilaHam7mO9tT++dtWRnVA8iG3y7LqK0gPzd+zbNhYypF8MaYFDmjtnG0AibUEjg50YLZ2WLIM2OLL
	pgfVZOX/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNaz1-0001l2-10; Thu, 24 Oct 2019 11:08:47 +0000
References: <ec3161a0-7926-b514-6409-548d4947c9f1@rapiduswireless.com>
In-Reply-To: <ec3161a0-7926-b514-6409-548d4947c9f1@rapiduswireless.com>
Date: Thu, 24 Oct 2019 13:08:21 +0200
To: Rapidus Wireless Research and Development <rand@rapiduswireless.com>
MIME-Version: 1.0
Message-ID: <mailman.5891.1571915317.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Florian Eckert via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Florian Eckert <eckert.florian@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] How to add items to Luci wireless_modefreq
 template
Content-Type: multipart/mixed; boundary="===============1942763552243717813=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1942763552243717813==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1942763552243717813==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNayo-0001kf-QU
	for openwrt-devel@lists.openwrt.org; Thu, 24 Oct 2019 11:08:36 +0000
Received: by mail-qt1-x82d.google.com with SMTP id c17so34217572qtn.8
        for <openwrt-devel@lists.openwrt.org>; Thu, 24 Oct 2019 04:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Jee3t2ntDzg5HxOgQTEaVk6RBUf0KpQdBj39yRvcFxs=;
        b=IqXeOsM9t6tdP7Tv9VDLVM4a2Ed0EUDuFWYMaI4eKTH77p273L4QRNa/Jx/DO7q/8n
         JD5fpkQhoMCs0IDsfY/D0NHGdj7d3XYsmCsqAvytOLKZh6WXZw9H8hRRLql93tGyVoLv
         LnL/6UJKYmnih+S5tDoqq/w0JzFL2cauvpEmt/gpHnzMjSfhLKqfzVhEZnyo7wMqFGpn
         i8mvXhB5a0HNAPJaNvpLb9Pm3PRTRr1tmrrLNpl0p/uimQyp4rQvbWLLq1ka/jt4k+GN
         2+xOlUYaD5PB9eajQXR4zEsL/VylCAKDOIZCZ4esaEOtfdg/M1vz3dZ5vpar7NXCYi6C
         9pxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Jee3t2ntDzg5HxOgQTEaVk6RBUf0KpQdBj39yRvcFxs=;
        b=Pv6EtiJuySabnMvD5POT2xpY/se4zXPIhU0R1XjSF1I3POt0dOomC8jZ6ogNe+9aA0
         oCydYj7JLIbS5vikw4UJzLAFUcfAsER7xrLqqlKsV2hmZw7jotIMAM8aQHT75seS3pY5
         aOLl2vVNCgbxKChOL9lQOTiHIHNHyFdf0WLrm6rRlIPs37NZm2XZ2ZVH4Zmy2fJUVMdo
         bWNuICsEj8TZy1SVtRXOwQkZnegxh7IjBE+RcNfYr8g3SQEwPdhRZQS7cDTCts0KWl7E
         bAFa3XoTXHX4Lk/FHhLqv1WRk8WpjtGdiGsHbD45gSi9nUnu1tRWqk4NPXGKFpKJIBhu
         UQoQ==
X-Gm-Message-State: APjAAAXaXIttVxdhFsrefrg4fTyTw9RqDJDee930sFZ8vb4u4xW14lnm
	qAzuWn4wlLuRS/rMyxPeEZOZervrW6mSUqM2UhA=
X-Google-Smtp-Source: APXvYqzIztMEYfsYpR6Z7b1YIyVZlwi/DBjcpisq+ffs3mzcWR00S1mtgJRh4rQ/Pm2UVdxUQvzqtUBfQlvZny5YWUo=
X-Received: by 2002:ac8:862:: with SMTP id x31mr525501qth.58.1571915313141;
 Thu, 24 Oct 2019 04:08:33 -0700 (PDT)
MIME-Version: 1.0
References: <ec3161a0-7926-b514-6409-548d4947c9f1@rapiduswireless.com>
In-Reply-To: <ec3161a0-7926-b514-6409-548d4947c9f1@rapiduswireless.com>
From: Florian Eckert <eckert.florian@googlemail.com>
Date: Thu, 24 Oct 2019 13:08:21 +0200
Message-ID: <CALPCC5yEVa66U-Xc02UOVnxcpyEHP46Jw9X+RGjDS+Py7=2hsQ@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] How to add items to Luci wireless_modefreq template
To: Rapidus Wireless Research and Development <rand@rapiduswireless.com>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_040834_883356_CD8B9632 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2607:f8b0:4864:20:0:0:0:82d listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             (eckert.florian[at]googlemail.com)
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

Please open a bug report/issue on https://github.com/openwrt/luci/issues
Also add add version information.

> The expected behavior for items on the Luci wireless_modefreq template is that changing the value then clicking Save&Apply results in:
>
> the UCI configuration item being set and committed,
> the wireless is restarted.
> I added 2 more items to this template, but for one of them, I get 1) but not 2).
> The existing items and other added item get expected behavior.
> I guessed that you have to add the item(s) to the taboption's cfgvalue, formvalue and write functions, but is there more to it?


--===============1942763552243717813==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1942763552243717813==--
