Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CF71C79B6
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 May 2020 20:56:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHopnj/mrs24Naqq3P/6uDgA4LLnMBmSfSANf8NaAIY=; b=CTkd+QZVPRXjpi
	EAuZ6Lm4WfZR6QmJfSuQWGRl9UpKEfz0GqZZ0ii1OGFX8LEn6QTxwrecByJMbff61WXqYTdsqEWGb
	kS4op74aOMwTOC98NwKKJi5CxSiCX1Y1u4KpIjTvCWrBjNozGAippcFO9iOZHuq9BXGn9nYU3uD1m
	HXCMVbAsaDASRhNVm6ZD0js/+SUeBWmJoUXUky63T5SqL8E5nKbqYf0VNHVCWOZEke4I3y2UhY1Vs
	0JejkUFG1fCzbv4P/aNJdG7K519j5P2GdqHARu41lEbhRHKZ0VlpzxzhnbUa4PxSa2zxmcqoeG13k
	ojpjcb3r9dxWVfTf2BNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWPDQ-0007Yp-SK; Wed, 06 May 2020 18:56:20 +0000
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWPDJ-0007YK-0J
 for openwrt-devel@lists.openwrt.org; Wed, 06 May 2020 18:56:14 +0000
Received: by mail-io1-xd2d.google.com with SMTP id f3so3391933ioj.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 06 May 2020 11:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aleksander-es.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IMg68Q9sm532CkwSPRvEJBUHL9YwXUjTzdTkVF6mYxk=;
 b=s4J4/p4sz8SyWXL9TB6e5B54xgd3HA6X5NXsN/e+d8Qe1bq179Li+u445+UDXuK7rn
 dL7u9g+48riwjWgxpvqxQqrb9eiTn7JyrUQUrBZ5qn83fXcpqn+y3D+txZ/xuW6YkyFV
 XSaK7stXMDGKTuMe4RYFLsKWpfjmCHAsVJubniUWyK0Wu3lYxXlC7Gudr22GeuQe2GNV
 vjKV4vo6d8jG9KHv+JI7Y5kQfy82chREI++d1BO4fzST0nvHvgzMunsvh+FiycWljTIA
 6VhX66W6RY6jnrKQZ1GJE3t1y6bWfa/CQeRIpWtav8Rq6xaWVBylt/myO0hRnxrhluSk
 wSuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IMg68Q9sm532CkwSPRvEJBUHL9YwXUjTzdTkVF6mYxk=;
 b=Cr8f5sw0aTsK0pxoyp/kkTgdiTPNQe55TXRfl2OTTUomTc3FIoBJnxre5K3aWPVFiC
 GQaQtWYjbl8zPCJhgicgoZsDzLFYug0ODzLNCNSLo9hh0vrSmhHnIUOELQe7eCbBJy/G
 rMk65yE5OUunUohKRgp3GXmdGfuVZxGuGRx2pes9xdIJtViPMvX/7u18c9/s8j2lmotO
 Wklrp61QfJepoUs6ipI31JBvsqHt73vPj2sMWJ9/cz07plYYH4tLkNk2sWm4rPVGdJgV
 ihGzCB0WZidfWUmjXXITrGLnKdOD7hsRkqs9254VDjsbgPTMmwRebtYAE+nVIXwZi2sx
 /72w==
X-Gm-Message-State: AGi0Puata/DeiM51s+3YsrlPTT2qnz7sDxOMqJXhEC+aTpWh1mPgYEVX
 3J0kR1qVsfVgxoNXYOla6qskpOE9+ANSAJpp/rtPSw==
X-Google-Smtp-Source: APiQypKx+SnNPDPpLxOjg2MhEGhJaqwxiqq4gDo4SJIvxkGt5x47r89jVw2F60qTrXQEWYVVRWk9zQmtMZji9EE1O8o=
X-Received: by 2002:a05:6602:2a52:: with SMTP id
 k18mr68677iov.100.1588791371953; 
 Wed, 06 May 2020 11:56:11 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CAJQUmm6yC5n32pw1PfVX_xJmzSgy0svZQZQRrA0Uyf2GSj6nNA@mail.gmail.com>
 <87mu6ur24u.fsf@miraculix.mork.no>
 <CALYKT1j=15WNV+H54qX=zT8K93GoCvs5h-VUzVvRBmzAGtfrKA@mail.gmail.com>
 <CAAP7ucKtq2tiJRVMFjr5zx=NCG6=-507wyNhP18hm0Y0gAkj8Q@mail.gmail.com>
 <CALYKT1jgbSGaU++m4jbfZfnP=ecivEQ2tFRb6qpd26TZWmjJzg@mail.gmail.com>
 <CALYKT1ibXO1x96TZWxcEhmtTWwPPPFN+WPRwpYfLfULNt_edGg@mail.gmail.com>
In-Reply-To: <CALYKT1ibXO1x96TZWxcEhmtTWwPPPFN+WPRwpYfLfULNt_edGg@mail.gmail.com>
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 6 May 2020 20:55:59 +0200
Message-ID: <CAAP7uc+mTnEbE8HSNghweu3uUYG97RrttrP4UuawokA6a1QYvg@mail.gmail.com>
To: Jeonghum Joh <oosaprogrammer@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_115613_046770_D8CE7D84 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2d listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [ModemManager] How can I make ModemManager work
 right?
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hey,

> I guess I could try other LTE/5G modem.
> I'd like to know what is best supported by ModemManager or OpenWRT/LEDE.
>

Puff, lots of different devices. If you try anything from e.g. Sierra
Wireless, Quectel, Telit... they will probably work. BUT, the issues
seen in your setup may not be directly related to the modem in use.

> Could you please name them. Let me know some please.
>
> Thank you very much.
>
> Hucom wireless told me they don't support ModemManager.
>

They probably don't even know what ModemManager is; but that is not a
reason not to support this device ourselves without the vendor's help.
Could you set up a public ssh connection to your system so that I can
take a look at it myself? If so, send details privately.

-- 
Aleksander
https://aleksander.es

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
